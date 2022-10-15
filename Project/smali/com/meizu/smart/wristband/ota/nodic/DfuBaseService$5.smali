.class Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "DfuBaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    .prologue
    .line 723
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method

.method private parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;
    .locals 8
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 1017
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 1018
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 1019
    const-string v5, ""

    .line 1032
    :goto_0
    return-object v5

    .line 1020
    :cond_0
    array-length v2, v0

    .line 1021
    .local v2, "length":I
    if-nez v2, :cond_1

    .line 1022
    const-string v5, ""

    goto :goto_0

    .line 1024
    :cond_1
    mul-int/lit8 v5, v2, 0x3

    add-int/lit8 v5, v5, -0x1

    new-array v3, v5, [C

    .line 1025
    .local v3, "out":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 1026
    aget-byte v5, v0, v1

    and-int/lit16 v4, v5, 0xff

    .line 1027
    .local v4, "v":I
    mul-int/lit8 v5, v1, 0x3

    invoke-static {}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$3300()[C

    move-result-object v6

    ushr-int/lit8 v7, v4, 0x4

    aget-char v6, v6, v7

    aput-char v6, v3, v5

    .line 1028
    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x1

    invoke-static {}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$3300()[C

    move-result-object v6

    and-int/lit8 v7, v4, 0xf

    aget-char v6, v6, v7

    aput-char v6, v3, v5

    .line 1029
    add-int/lit8 v5, v2, -0x1

    if-eq v1, v5, :cond_2

    .line 1030
    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x2

    const/16 v6, 0x2d

    aput-char v6, v3, v5

    .line 1025
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1032
    .end local v4    # "v":I
    :cond_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 11
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/16 v9, 0x11

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 954
    invoke-virtual {p2, v9, v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 956
    .local v4, "responseType":I
    packed-switch v4, :pswitch_data_0

    .line 998
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2200(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1010
    :goto_0
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 1011
    :try_start_0
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 1012
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1013
    :goto_1
    return-void

    .line 959
    :pswitch_0
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    sget-object v8, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->BOARD_SERVICE_UUID:Ljava/util/UUID;

    invoke-static {v7, p1, v8}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$3100(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 961
    .local v2, "mService":Landroid/bluetooth/BluetoothGattService;
    if-eqz v2, :cond_1

    .line 962
    invoke-static {}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1400()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 967
    .local v3, "packetCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :goto_2
    :try_start_1
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const/16 v8, 0x14

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$3202(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I

    .line 968
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1802(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I

    .line 970
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2100(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)V

    .line 973
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$500(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$800(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2200(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 974
    :cond_0
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const/16 v8, 0xf

    const-string v9, "Upload terminated"

    invoke-static {v7, v8, v9}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2400(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/HexFileValidationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 983
    :catch_0
    move-exception v1

    .line 984
    .local v1, "e":Lcom/meizu/smart/wristband/ota/nodic/exception/HexFileValidationException;
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const-string v8, "Invalid HEX file"

    invoke-static {v7, v8}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$900(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;)V

    .line 985
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const/16 v8, 0x1003

    invoke-static {v7, v8}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$802(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I

    goto :goto_0

    .line 964
    .end local v1    # "e":Lcom/meizu/smart/wristband/ota/nodic/exception/HexFileValidationException;
    .end local v3    # "packetCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "packetCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    goto :goto_2

    .line 978
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2500(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)[B

    move-result-object v0

    .line 979
    .local v0, "buffer":[B
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2600(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 980
    .local v5, "size":I
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v7, p1, v3, v0, v5}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2700(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    .line 981
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2800(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)V
    :try_end_2
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/HexFileValidationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 986
    .end local v0    # "buffer":[B
    .end local v5    # "size":I
    :catch_1
    move-exception v1

    .line 987
    .local v1, "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const-string v8, "Error while reading the input stream"

    invoke-static {v7, v8, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2900(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 988
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const/16 v8, 0x1004

    invoke-static {v7, v8}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$802(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I

    goto/16 :goto_0

    .line 1000
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "mService":Landroid/bluetooth/BluetoothGattService;
    .end local v3    # "packetCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_3
    const/4 v7, 0x2

    invoke-virtual {p2, v9, v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1001
    .local v6, "status":I
    if-eq v6, v8, :cond_4

    .line 1002
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v7, v8}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2202(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z

    .line 1004
    :cond_4
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Notification received from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value (0x): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2400(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;ILjava/lang/String;)V

    .line 1005
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v8

    invoke-static {v7, v8}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$3002(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;[B)[B

    goto/16 :goto_0

    .line 1012
    .end local v6    # "status":I
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 956
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 934
    if-nez p3, :cond_0

    .line 938
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read Response received from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value (0x): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2400(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;ILjava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$3002(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;[B)[B

    .line 940
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$602(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z

    .line 947
    :goto_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 948
    :try_start_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 949
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    return-void

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Characteristic read error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$900(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    or-int/lit16 v1, p3, 0x4000

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$802(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I

    goto :goto_0

    .line 949
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 10
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x5

    const/4 v5, 0x1

    .line 849
    if-nez p3, :cond_9

    .line 859
    invoke-static {}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1400()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 860
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1500(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1600(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 862
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    iget-object v8, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v8}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1700(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)I

    move-result v8

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1702(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I

    .line 863
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1808(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)I

    .line 867
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1900(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1800(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)I

    move-result v7

    iget-object v8, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v8}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1900(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)I

    move-result v8

    if-ne v7, v8, :cond_1

    move v3, v5

    .line 868
    .local v3, "notificationExpected":Z
    :goto_0
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1700(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)I

    move-result v7

    iget-object v8, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v8}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2000(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)I

    move-result v8

    if-ne v7, v8, :cond_2

    move v2, v5

    .line 870
    .local v2, "lastPacketTransferred":Z
    :goto_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_3

    .line 930
    .end local v2    # "lastPacketTransferred":Z
    .end local v3    # "notificationExpected":Z
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v3, v6

    .line 867
    goto :goto_0

    .restart local v3    # "notificationExpected":Z
    :cond_2
    move v2, v6

    .line 868
    goto :goto_1

    .line 875
    .restart local v2    # "lastPacketTransferred":Z
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v5}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2100(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)V

    .line 878
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v5}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$500(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v5}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$800(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)I

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v5}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2200(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v5}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 880
    :cond_4
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v5}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/HexFileValidationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 881
    :try_start_1
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const/16 v7, 0xf

    const-string v8, "Upload terminated"

    invoke-static {v5, v7, v8}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2400(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;ILjava/lang/String;)V

    .line 882
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v5}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 883
    monitor-exit v6

    goto :goto_2

    .line 884
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/HexFileValidationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 892
    :catch_0
    move-exception v1

    .line 893
    .local v1, "e":Lcom/meizu/smart/wristband/ota/nodic/exception/HexFileValidationException;
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const-string v6, "Invalid HEX file"

    invoke-static {v5, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$900(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;)V

    .line 894
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const/16 v6, 0x1003

    invoke-static {v5, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$802(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I

    .line 927
    .end local v1    # "e":Lcom/meizu/smart/wristband/ota/nodic/exception/HexFileValidationException;
    .end local v2    # "lastPacketTransferred":Z
    .end local v3    # "notificationExpected":Z
    :goto_3
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v5}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 928
    :try_start_3
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v5}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 929
    monitor-exit v6

    goto :goto_2

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 887
    .restart local v2    # "lastPacketTransferred":Z
    .restart local v3    # "notificationExpected":Z
    :cond_5
    :try_start_4
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v5}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2500(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)[B

    move-result-object v0

    .line 888
    .local v0, "buffer":[B
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v5}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2600(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 889
    .local v4, "size":I
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v5, p1, p2, v0, v4}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2700(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    .line 890
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v5}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2800(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)V
    :try_end_4
    .catch Lcom/meizu/smart/wristband/ota/nodic/exception/HexFileValidationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 895
    .end local v0    # "buffer":[B
    .end local v4    # "size":I
    :catch_1
    move-exception v1

    .line 896
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const-string v6, "Error while reading the input stream"

    invoke-static {v5, v6, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2900(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 897
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const/16 v6, 0x1004

    invoke-static {v5, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$802(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I

    goto :goto_3

    .line 899
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "lastPacketTransferred":Z
    .end local v3    # "notificationExpected":Z
    :cond_6
    iget-object v6, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1500(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 901
    iget-object v6, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data written to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value (0x): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v9, v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2400(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;ILjava/lang/String;)V

    .line 902
    iget-object v6, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v6, v5}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1502(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z

    goto :goto_3

    .line 905
    :cond_7
    iget-object v6, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data written to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value (0x): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v9, v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2400(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;ILjava/lang/String;)V

    .line 906
    iget-object v6, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v6, v5}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1602(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z

    goto/16 :goto_3

    .line 910
    :cond_8
    iget-object v6, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data written to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value (0x): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v9, v7}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2400(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;ILjava/lang/String;)V

    .line 911
    iget-object v6, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v6, v5}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$602(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z

    goto/16 :goto_3

    .line 918
    :cond_9
    iget-object v6, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$2300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 919
    iget-object v6, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v6, v5}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$602(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z

    goto/16 :goto_3

    .line 921
    :cond_a
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Characteristic write error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$900(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;)V

    .line 922
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    or-int/lit16 v6, p3, 0x4000

    invoke-static {v5, v6}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$802(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I

    goto/16 :goto_3
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    const/4 v4, 0x0

    .line 727
    if-nez p2, :cond_5

    .line 728
    const/4 v1, 0x2

    if-ne p3, v1, :cond_4

    .line 729
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const-string v2, "Connected to GATT server"

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$100(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;)V

    .line 730
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$202(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I

    .line 744
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 746
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :try_start_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const-string v2, "Waiting 1600 ms for a possible Service Changed indication..."

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$700(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;)V

    .line 748
    const-wide/16 v2, 0x640

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 754
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v0

    .line 762
    .local v0, "success":Z
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to start service discovery... "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_3

    const-string v1, "succeed"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$100(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;)V

    .line 764
    if-nez v0, :cond_2

    .line 765
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const/16 v2, 0x1005

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$802(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I

    .line 782
    .end local v0    # "success":Z
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 783
    :try_start_2
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 784
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 785
    :cond_2
    return-void

    .line 754
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 755
    :catch_0
    move-exception v1

    goto :goto_0

    .line 762
    .restart local v0    # "success":Z
    :cond_3
    const-string v1, "failed"

    goto :goto_1

    .line 770
    .end local v0    # "success":Z
    :cond_4
    if-nez p3, :cond_1

    .line 771
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const-string v2, "Disconnected from GATT server"

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$100(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;)V

    .line 772
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v1, v4}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$402(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z

    .line 773
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v1, v4}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$202(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I

    goto :goto_2

    .line 776
    :cond_5
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection state change error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$900(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;)V

    .line 777
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v1, v4}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$402(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z

    .line 778
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const v2, 0x8000

    or-int/2addr v2, p2

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$802(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I

    goto :goto_2

    .line 784
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 805
    if-nez p3, :cond_2

    .line 806
    invoke-static {}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1000()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 807
    invoke-static {}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1100()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 809
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v3

    aget-byte v3, v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1202(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z

    .line 810
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$602(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z

    .line 819
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 820
    :try_start_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 821
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    return-void

    .line 814
    :cond_2
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Descriptor read error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$900(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    or-int/lit16 v1, p3, 0x4000

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$802(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I

    goto :goto_0

    .line 821
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 826
    if-nez p3, :cond_4

    .line 827
    invoke-static {}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1000()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 828
    invoke-static {}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1100()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 830
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v3

    aget-byte v3, v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :goto_0
    invoke-static {v2, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1202(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z

    .line 842
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 844
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    return-void

    :cond_1
    move v0, v1

    .line 830
    goto :goto_0

    .line 833
    :cond_2
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v3

    aget-byte v3, v3, v1

    if-ne v3, v0, :cond_3

    :goto_2
    invoke-static {v2, v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$1302(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 837
    :cond_4
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Descriptor write error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$900(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    or-int/lit16 v1, p3, 0x4000

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$802(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I

    goto :goto_1

    .line 844
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 789
    if-nez p2, :cond_0

    .line 790
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const-string v1, "Services discovered"

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$100(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const/4 v1, -0x3

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$202(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I

    .line 798
    :goto_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 800
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    return-void

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service discovery error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$900(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$5;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    or-int/lit16 v1, p2, 0x4000

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$802(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I

    goto :goto_0

    .line 800
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
