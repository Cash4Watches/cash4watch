import "../styles/Footer.scss";
import PhoneInTalkIcon from "@mui/icons-material/PhoneInTalk";
import EmailIcon from "@mui/icons-material/Email";
import TwitterIcon from "@mui/icons-material/Twitter";
import FacebookIcon from "@mui/icons-material/Facebook";
import InstagramIcon from "@mui/icons-material/Instagram";
function Footer() {
  return (
    <>
      <div className="Footer">
        <div className="Footer__icon-container">
          <a target="_blank" rel="noreferrer" href="tel:2124103030">
            <PhoneInTalkIcon />
          </a>
          <a
            target="_blank"
            rel="noreferrer"
            href="mailto:info@cash4watches.com"
          >
            <EmailIcon />
          </a>
          <a
            target="_blank"
            rel="noreferrer"
            href="https://twitter.com/cash4watches"
          >
            <TwitterIcon />
          </a>
          <a
            target="_blank"
            rel="noreferrer"
            href="https://www.facebook.com/profile.php?id=100081435379482"
          >
            <FacebookIcon />
          </a>
          <a
            target="_blank"
            rel="noreferrer"
            href="https://www.facebook.com/profile.php?id=100081435379482"
          >
            <InstagramIcon />
          </a>
        </div>
      </div>
    </>
  );
}

export default Footer;
