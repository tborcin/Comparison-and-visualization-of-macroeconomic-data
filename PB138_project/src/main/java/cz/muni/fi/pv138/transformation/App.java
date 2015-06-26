package cz.muni.fi.pv138.transformation;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.logging.Logger;

import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.SourceLocator;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

/**
 * Main java class used to transform well formed database to html table
 *
 * @author Tomas Borcin
 */
public class App {

  public static String database = "/home/tomas/MUNI/PB138/git/database.xml";
  public static String xslFile = "/home/tomas/MUNI/PB138/git/smaller_database_transformation";
  public static String chooseScountriesXslFile = "/home/tomas/MUNI/PB138/git/choose_countries_transformation";
  public static String htmlTable = "/home/tomas/MUNI/PB138/git/html_table.html";
  public static String smallHtmlTable = "/home/tomas/MUNI/PB138/git/small_html_table.html";
  private static final Logger LOGGER = Logger.getLogger(App.class.getName());

  public static void main(String[] args) throws Exception {

    TransformerFactory factory = TransformerFactory.newInstance();

    // Use the factory to create a template containing the xsl file
    Templates template = factory.newTemplates(new StreamSource(new FileInputStream(xslFile)));

    // Use the template to create a transformer
    Transformer xformer = template.newTransformer();

    // Prepare the input and output files
    Source source = new StreamSource(new FileInputStream(database));
    Result result = new StreamResult(new FileOutputStream(htmlTable));
    LOGGER.info("Message");

    // Apply the xsl file to the source file and write the result to the output file
    xformer.transform(source, result);

    // Create transformer factory
    factory = TransformerFactory.newInstance();

    // Use the factory to create a template containing the xsl file
    template = factory.newTemplates(new StreamSource(new FileInputStream(chooseScountriesXslFile)));

    // Use the template to create a transformer
    xformer = template.newTransformer();

    // Prepare the input and output files
    source = new StreamSource(new FileInputStream(database));
    result = new StreamResult(new FileOutputStream(smallHtmlTable));

    // Apply the xsl file to the source file and write the result to the output file
    xformer.transform(source, result);
  }
}
