import java.time.OffsetDateTime;

public class Guest {
    private int id;
    private String name;
    private String email;
    private String mobileNumber;
    private String organization;
    private String foodPreference;
    private OffsetDateTime checkInTime;
    private OffsetDateTime checkOutTime;

    // Constructor for registration (only name, email, mobile)
    public Guest(String name, String email, String mobileNumber) {
        this.name = name;
        this.email = email;
        this.mobileNumber = mobileNumber;
    }

    // Full constructor
    public Guest(int id, String name, String email, String mobileNumber,
                 String organization, String foodPreference,
                 OffsetDateTime checkInTime, OffsetDateTime checkOutTime) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.mobileNumber = mobileNumber;
        this.organization = organization;
        this.foodPreference = foodPreference;
        this.checkInTime = checkInTime;
        this.checkOutTime = checkOutTime;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getMobileNumber() { return mobileNumber; }
    public void setMobileNumber(String mobileNumber) { this.mobileNumber = mobileNumber; }

    public String getOrganization() { return organization; }
    public void setOrganization(String organization) { this.organization = organization; }

    public String getFoodPreference() { return foodPreference; }
    public void setFoodPreference(String foodPreference) { this.foodPreference = foodPreference; }

    public OffsetDateTime getCheckInTime() { return checkInTime; }
    public void setCheckInTime(OffsetDateTime checkInTime) { this.checkInTime = checkInTime; }

    public OffsetDateTime getCheckOutTime() { return checkOutTime; }
    public void setCheckOutTime(OffsetDateTime checkOutTime) { this.checkOutTime = checkOutTime; }
}
