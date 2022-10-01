
@Service
public class UserServiceIMPL implements UserService {


    @Autowired
    private UserRepo userRepo;

    @Override
    public String addUser(UserSaveRequestDTO userSaveRequestDTO) {

        User user = new User(
                1,
                userSaveRequestDTO.getFirstname(),
                userSaveRequestDTO.getFamilyname(),
                userSaveRequestDTO.getGender(),
                userSaveRequestDTO.getNationality(),
                userSaveRequestDTO.getDateofbirth(),
                userSaveRequestDTO.getPassportno(),
                userSaveRequestDTO.getIssuedate(),
                userSaveRequestDTO.getExpiredate(),
                userSaveRequestDTO.getResidence(),
                userSaveRequestDTO.getPhonenuber(),
                userSaveRequestDTO.getEmail(),
                userSaveRequestDTO.getMailaddress(),
                userSaveRequestDTO.getTown(),
                userSaveRequestDTO.getCity(),
                userSaveRequestDTO.getCountry(),
                userSaveRequestDTO.getZipcode()
                );
        if (!userRepo.existsById(user.getUserId())){
            userRepo.save(user);
            return user.getFirstname()+"saved";
        }

        else {
            System.out.print("already exsists");
            return "already exists";

        }
    }
}
