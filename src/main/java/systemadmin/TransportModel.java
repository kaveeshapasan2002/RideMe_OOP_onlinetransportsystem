package systemadmin;

import java.math.BigDecimal;

public class TransportModel {
    private int id;
    private BigDecimal minDistance;
    private BigDecimal maxDistance;
    private BigDecimal price;
    private String vehicleNumber;
    private BigDecimal vehiclePrice;
    private String bankName;
    private String bankBranch;
    private String bankNo;
    
   public TransportModel() {}

    public TransportModel(int id, BigDecimal minDistance, BigDecimal maxDistance, BigDecimal price,
			String vehicleNumber, BigDecimal vehiclePrice, String bankName, String bankBranch, String bankNo) {
	
		this.id = id;
		this.minDistance = minDistance;
		this.maxDistance = maxDistance;
		this.price = price;
		this.vehicleNumber = vehicleNumber;
		this.vehiclePrice = vehiclePrice;
		this.bankName = bankName;
		this.bankBranch = bankBranch;
		this.bankNo = bankNo;
	}
	// Getter and Setter for ID
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    // Getter and Setter for minDistance
    public BigDecimal getMinDistance() {
        return minDistance;
    }
    public void setMinDistance(BigDecimal minDistance) {
        this.minDistance = minDistance;
    }

    // Getter and Setter for maxDistance
    public BigDecimal getMaxDistance() {
        return maxDistance;
    }
    public void setMaxDistance(BigDecimal maxDistance) {
        this.maxDistance = maxDistance;
    }

    // Getter and Setter for price
    public BigDecimal getPrice() {
        return price;
    }
    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    // Getter and Setter for vehicleNumber
    public String getVehicleNumber() {
        return vehicleNumber;
    }
    public void setVehicleNumber(String vehicleNumber) {
        this.vehicleNumber = vehicleNumber;
    }

    // Getter and Setter for vehiclePrice
    public BigDecimal getVehiclePrice() {
        return vehiclePrice;
    }
    public void setVehiclePrice(BigDecimal vehiclePrice) {
        this.vehiclePrice = vehiclePrice;
    }

    // Getter and Setter for bankName
    public String getBankName() {
        return bankName;
    }
    public void setBankName(String bankName) {
        this.bankName = bankName;
    }

    // Getter and Setter for bankBranch
    public String getBankBranch() {
        return bankBranch;
    }
    public void setBankBranch(String bankBranch) {
        this.bankBranch = bankBranch;
    }

    // Getter and Setter for bankNo
    public String getBankNo() {
        return bankNo;
    }
    public void setBankNo(String bankNo) {
        this.bankNo = bankNo;
    }

}