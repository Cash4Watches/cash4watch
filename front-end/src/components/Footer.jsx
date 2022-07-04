import "../styles/Footer.scss";
import PhoneInTalkIcon from "@mui/icons-material/PhoneInTalk";
import EmailIcon from "@mui/icons-material/Email";
function Footer() {
  return (
    <>
      <div className="Footer">
        <p>
          <PhoneInTalkIcon />
          212-410-3030
        </p>
        <p>
          <EmailIcon />
          info@cash4watches.com
        </p>
      </div>
    </>
  );
}

export default Footer;
