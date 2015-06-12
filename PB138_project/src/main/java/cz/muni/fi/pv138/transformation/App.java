package cz.muni.fi.pv138.transformation;

import java.io.File;
import java.io.FileInputStream;
import java.io.PrintWriter;
import java.util.logging.Logger;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Source;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamSource;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 *
 * @author tomas
 */
public class App {

  public static String database = "/home/tomas/MUNI/PV138/git/database";
  public static String xslFile = "/home/tomas/MUNI/PV138/git/database_transformation_try";
  public static String html_table = "/home/tomas/MUNI/PV138/git/html_table.html";
  public static String short_table = "/home/tomas/MUNI/PV138/git/short_table.html";
  private static final Logger LOGGER = Logger.getLogger(App.class.getName());

  public static void main(String[] args) throws Exception {

    TransformerFactory transformerFactory = TransformerFactory.newInstance();

    // Use the factory to create a template containing the xsl file
    Templates template = transformerFactory.newTemplates(new StreamSource(new FileInputStream(xslFile)));

    // Use the template to create a transformer
    Transformer xformer = template.newTransformer();

    // Prepare the input and output files
    Source source = new StreamSource(new FileInputStream(database));
//    Result result = new StreamResult(new FileOutputStream(html_table));

    // Apply the xsl file to the source file and write the result to the output file
//    xformer.transform(source, result);
    DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();

    //Get the DOM Builder
    DocumentBuilder documentBuilder = factory.newDocumentBuilder();

    //Load and Parse the XML document
    //document contains the complete XML as a Tree.
    File tableFile = new File(html_table);
    PrintWriter writer = new PrintWriter(short_table, "UTF-8");
    writer.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
    writer.println("<!DOCTYPE div PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">");
    writer.println("<div class=\"gdp\">");
    Document document = documentBuilder.parse(tableFile);
    document.getDocumentElement().normalize();
    Element root = document.getDocumentElement();
//    LOGGER.info(root.getAttribute("class"));
    NodeList nodeList = root.getChildNodes();
    for (int i = 1; i < nodeList.getLength(); i += 2) {
      Node node = nodeList.item(i);
      NamedNodeMap namedNodeMap = node.getAttributes();
      for (int j = 0; j < namedNodeMap.getLength(); j++) {
//        LOGGER.info(namedNodeMap.item(j).getNodeValue());
        Node n = namedNodeMap.item(j);
        if (namedNodeMap.item(j).getNodeName().equals("50")) {
          writer.println();
        }
      }
    }
    writer.println("</div>");
//    for (int i = 0; i < nodeList.getLength(); i++) {
//      Node node = nodeList.item(i);
//      NamedNodeMap namedNodeMap = node.getAttributes();
//      if (namedNodeMap != null) {
//        for (int j = 0; j < namedNodeMap.getLength(); j++) {
//          if (namedNodeMap.item(i) != null) {
//            System.out.println(namedNodeMap.item(i).getNodeValue());
//          }
//        }
//      }
//    }
  }
}
