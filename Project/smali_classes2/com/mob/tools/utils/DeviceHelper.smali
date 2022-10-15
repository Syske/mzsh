.class public Lcom/mob/tools/utils/DeviceHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/DeviceHelper$1;,
        Lcom/mob/tools/utils/DeviceHelper$GSConnection;
    }
.end annotation


# static fields
.field private static deviceHelper:Lcom/mob/tools/utils/DeviceHelper;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    return-void
.end method

.method private getCurrentNetworkHardwareAddress()Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v12

    .local v12, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-nez v12, :cond_0

    const/4 v13, 0x0

    :goto_0
    return-object v13

    :cond_0
    invoke-static {v12}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v8

    .local v8, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/NetworkInterface;

    .local v9, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v9}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v7

    .local v7, "ias":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    if-eqz v7, :cond_1

    invoke-static {v7}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .local v1, "add":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v13

    if-nez v13, :cond_2

    instance-of v13, v1, Ljava/net/Inet4Address;

    if-eqz v13, :cond_2

    invoke-virtual {v9}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v11

    .local v11, "mac":[B
    if-eqz v11, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, "buf":Ljava/lang/StringBuilder;
    move-object v3, v11

    .local v3, "arr$":[B
    array-length v10, v3

    .local v10, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":Ljava/util/Iterator;
    .local v5, "i$":I
    :goto_1
    if-ge v5, v10, :cond_3

    aget-byte v0, v3, v5

    .local v0, "aMac":B
    const-string v13, "%02x:"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "aMac":B
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .end local v1    # "add":Ljava/net/InetAddress;
    .end local v2    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v3    # "arr$":[B
    .end local v4    # "buf":Ljava/lang/StringBuilder;
    .end local v5    # "i$":I
    .end local v7    # "ias":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v9    # "intf":Ljava/net/NetworkInterface;
    .end local v10    # "len$":I
    .end local v11    # "mac":[B
    :cond_5
    const/4 v13, 0x0

    goto :goto_0
.end method

.method private getHardwareAddressFromShell(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "networkCard"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .local v3, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cat /sys/class/net/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/address"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .local v4, "p":Ljava/lang/Process;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .local v2, "isr":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "p":Ljava/lang/Process;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x0

    .end local v3    # "line":Ljava/lang/String;
    :cond_1
    return-object v3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "p":Ljava/lang/Process;
    :catch_0
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "p":Ljava/lang/Process;
    :catch_1
    move-exception v5

    .local v5, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v6

    goto :goto_0

    .end local v5    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    throw v6

    :catch_3
    move-exception v7

    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "p":Ljava/lang/Process;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_3
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/mob/tools/utils/DeviceHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mob/tools/utils/DeviceHelper;->deviceHelper:Lcom/mob/tools/utils/DeviceHelper;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/mob/tools/utils/DeviceHelper;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/DeviceHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mob/tools/utils/DeviceHelper;->deviceHelper:Lcom/mob/tools/utils/DeviceHelper;

    :cond_0
    sget-object v0, Lcom/mob/tools/utils/DeviceHelper;->deviceHelper:Lcom/mob/tools/utils/DeviceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLocalDeviceKey()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardState()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardPath()Ljava/lang/String;

    move-result-object v6

    .local v6, "sdPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v9, "ShareSDK"

    invoke-direct {v1, v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "cacheRoot":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v4, Ljava/io/File;

    const-string v9, ".dk"

    invoke-direct {v4, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v4, "keyFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/mob/tools/utils/R;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ".dk"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    .local v8, "success":Z
    if-eqz v8, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .end local v4    # "keyFile":Ljava/io/File;
    .end local v8    # "success":Z
    :cond_2
    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/mob/tools/utils/R;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ".dk"

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v4    # "keyFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .local v5, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .local v3, "key":Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "strKey":Ljava/lang/String;
    if-eqz v3, :cond_3

    instance-of v9, v3, [C

    if-eqz v9, :cond_3

    check-cast v3, [C

    .end local v3    # "key":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [C

    .local v0, "cKey":[C
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    .end local v0    # "cKey":[C
    :cond_3
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_0
.end method

.method private getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private is4GMobileNetwork()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-string v2, "phone"

    invoke-direct {p0, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, "phone":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isFastMobileNetwork()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "phone"

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, "phone":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    :goto_0
    :pswitch_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    goto :goto_0

    :pswitch_3
    move v1, v2

    goto :goto_0

    :pswitch_4
    move v1, v2

    goto :goto_0

    :pswitch_5
    move v1, v2

    goto :goto_0

    :pswitch_6
    move v1, v2

    goto :goto_0

    :pswitch_7
    move v1, v2

    goto :goto_0

    :pswitch_8
    move v1, v2

    goto :goto_0

    :pswitch_9
    move v1, v2

    goto :goto_0

    :pswitch_a
    move v1, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private isSystemApp(Landroid/content/pm/PackageInfo;)Z
    .locals 5
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_2

    move v0, v2

    .local v0, "isSysApp":Z
    :goto_0
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-ne v4, v2, :cond_3

    move v1, v2

    .local v1, "isSysUpd":Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0    # "isSysApp":Z
    .end local v1    # "isSysUpd":Z
    :cond_2
    move v0, v3

    goto :goto_0

    .restart local v0    # "isSysApp":Z
    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method private listNetworkHardwareAddress()[Ljava/lang/String;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v18

    .local v18, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-nez v18, :cond_1

    const/4 v14, 0x0

    :cond_0
    return-object v14

    :cond_1
    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v10

    .local v10, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .local v15, "macs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/net/NetworkInterface;

    .local v11, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v11}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v13

    .local v13, "mac":[B
    if-eqz v13, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, "buf":Ljava/lang/StringBuilder;
    move-object v3, v13

    .local v3, "arr$":[B
    array-length v12, v3

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v12, :cond_3

    aget-byte v2, v3, v9

    .local v2, "aMac":B
    const-string v24, "%02x:"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v2    # "aMac":B
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v11}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v3    # "arr$":[B
    .end local v4    # "buf":Ljava/lang/StringBuilder;
    .end local v9    # "i$":I
    .end local v11    # "intf":Ljava/net/NetworkInterface;
    .end local v12    # "len$":I
    .end local v13    # "mac":[B
    :cond_5
    new-instance v17, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v17, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .local v23, "wlans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "eths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .local v21, "rmnets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "dummys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .local v22, "usbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .local v20, "rmnetUsbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .local v19, "others":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_c

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .local v16, "name":Ljava/lang/String;
    const-string v24, "wlan"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_6

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const-string v24, "eth"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const-string v24, "rev_rmnet"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    const-string v24, "dummy"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_9

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    const-string v24, "usbnet"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    const-string v24, "rmnet_usb"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .end local v16    # "name":Ljava/lang/String;
    :cond_c
    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static/range {v21 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v14, v0, [Ljava/lang/String;

    .local v14, "macArr":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    array-length v0, v14

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v7, v0, :cond_0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    aput-object v24, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method

.method private saveLocalDeviceKey(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardState()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/mob/tools/utils/R;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".dk"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "keyFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "cKey":[C
    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_0
.end method


# virtual methods
.method public Base64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p2, p1}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkPermission(Ljava/lang/String;)Z
    .locals 9
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    :try_start_0
    const-string v5, "android.content.Context"

    invoke-static {v5}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    const-string v6, "checkSelfPermission"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v5, v6, v7}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, "ret":Ljava/lang/Integer;
    if-nez v1, :cond_0

    const/4 v0, -0x1

    .end local v1    # "ret":Ljava/lang/Integer;
    .local v0, "res":I
    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return v3

    .end local v0    # "res":I
    .restart local v1    # "ret":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .end local v1    # "ret":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    .restart local v0    # "res":I
    goto :goto_0

    .end local v0    # "res":I
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    iget-object v5, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-virtual {v5, p1, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    iget-object v5, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "res":I
    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method public getAdvertisingID()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v7, 0x0

    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "com.google.android.gms"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/mob/tools/utils/DeviceHelper$GSConnection;

    const/4 v8, 0x0

    invoke-direct {v2, p0, v8}, Lcom/mob/tools/utils/DeviceHelper$GSConnection;-><init>(Lcom/mob/tools/utils/DeviceHelper;Lcom/mob/tools/utils/DeviceHelper$1;)V

    .local v2, "gsc":Lcom/mob/tools/utils/DeviceHelper$GSConnection;
    iget-object v8, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-virtual {v8, v4, v2, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper$GSConnection;->takeBinder()Landroid/os/IBinder;

    move-result-object v1

    .local v1, "binder":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .local v3, "input":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .local v5, "output":Landroid/os/Parcel;
    const-string v8, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v1, v8, v3, v5, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "adsid":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAdvertisingID === "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v8, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "adsid":Ljava/lang/String;
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "gsc":Lcom/mob/tools/utils/DeviceHelper$GSConnection;
    .end local v3    # "input":Landroid/os/Parcel;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "output":Landroid/os/Parcel;
    :goto_0
    return-object v0

    .restart local v0    # "adsid":Ljava/lang/String;
    .restart local v1    # "binder":Landroid/os/IBinder;
    .restart local v2    # "gsc":Lcom/mob/tools/utils/DeviceHelper$GSConnection;
    .restart local v3    # "input":Landroid/os/Parcel;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "output":Landroid/os/Parcel;
    :catch_0
    move-exception v6

    .local v6, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v0    # "adsid":Ljava/lang/String;
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "gsc":Lcom/mob/tools/utils/DeviceHelper$GSConnection;
    .end local v3    # "input":Landroid/os/Parcel;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "output":Landroid/os/Parcel;
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    .restart local v6    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v0, v7

    goto :goto_0
.end method

.method public getAndroidID()Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "androidId":Ljava/lang/String;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAndroidID === "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v0
.end method

.method public getAppLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .local v1, "appName":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    .end local v1    # "appName":Ljava/lang/String;
    .local v2, "appName":Ljava/lang/String;
    :goto_0
    return-object v2

    .end local v2    # "appName":Ljava/lang/String;
    .restart local v1    # "appName":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .local v0, "appLbl":I
    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v2, v1

    .end local v1    # "appName":Ljava/lang/String;
    .restart local v2    # "appName":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "appName":Ljava/lang/String;
    .restart local v1    # "appName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getAppVersion()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    :catch_0
    move-exception v2

    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const-string v3, "1.0"

    goto :goto_0
.end method

.method public getBluetoothName()Ljava/lang/String;
    .locals 3

    .prologue
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .local v1, "myDevice":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v1    # "myDevice":Landroid/bluetooth/BluetoothAdapter;
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v5}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "wifi"

    invoke-direct {p0, v5}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .local v3, "wifi":Landroid/net/wifi/WifiManager;
    if-nez v3, :cond_1

    .end local v3    # "wifi":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-object v4

    .restart local v3    # "wifi":Landroid/net/wifi/WifiManager;
    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "bssid":Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v0, v4

    .end local v0    # "bssid":Ljava/lang/String;
    :cond_2
    move-object v4, v0

    goto :goto_0

    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wifi":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v2

    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "phone"

    invoke-direct {p0, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_1

    const-string v0, "-1"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .local v0, "operator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "-1"

    goto :goto_0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "phone"

    invoke-direct {p0, v4}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-nez v2, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v4}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .local v0, "operator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .end local v0    # "operator":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method public getCellId()I
    .locals 4

    .prologue
    :try_start_0
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v3}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "phone"

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .local v0, "loc":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v0    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getCellLac()I
    .locals 4

    .prologue
    :try_start_0
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v3}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "phone"

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .local v0, "loc":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v0    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getCharAndNumr(I)Ljava/lang/String;
    .locals 14
    .param p1, "length"    # I

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "currentTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .local v4, "elapseTime":J
    xor-long v8, v2, v4

    .local v8, "realTime":J
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .local v10, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .local v7, "random":Ljava/util/Random;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_2

    const/4 v11, 0x2

    invoke-virtual {v7, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    rem-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_0

    const-string v0, "char"

    .local v0, "charOrNum":Ljava/lang/String;
    :goto_1
    const-string v11, "char"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/16 v11, 0x1a

    invoke-virtual {v7, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x61

    int-to-char v1, v11

    .local v1, "charValue":C
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v10, v11, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .end local v1    # "charValue":C
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v0    # "charOrNum":Ljava/lang/String;
    :cond_0
    const-string v0, "num"

    goto :goto_1

    .restart local v0    # "charOrNum":Ljava/lang/String;
    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    const/16 v12, 0xa

    invoke-virtual {v7, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuffer;->insert(II)Ljava/lang/StringBuffer;

    goto :goto_2

    .end local v0    # "charOrNum":Ljava/lang/String;
    :cond_2
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0x28

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public getDetailNetworkTypeForStatic()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .local v0, "networkType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v0, "none"

    .end local v0    # "networkType":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .restart local v0    # "networkType":Ljava/lang/String;
    :cond_2
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "wifi"

    goto :goto_0

    :cond_3
    const-string v1, "4g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "4g"

    goto :goto_0

    :cond_4
    const-string v1, "3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "3g"

    goto :goto_0

    :cond_5
    const-string v1, "2g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "2g"

    goto :goto_0

    :cond_6
    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "bluetooth"

    goto :goto_0
.end method

.method public getDeviceData()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getScreenSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v1

    .local v1, "deviString":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/mob/tools/utils/DeviceHelper;->Base64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDeviceDataNotAES()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getScreenSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v0

    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getSerialno()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getDeviceKey()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x28

    const/4 v2, 0x0

    .local v2, "localKey":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/utils/DeviceHelper;->getLocalDeviceKey()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v10, :cond_0

    .end local v2    # "localKey":Ljava/lang/String;
    :goto_1
    return-object v2

    .restart local v2    # "localKey":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0

    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v5, 0x0

    .local v5, "newKey":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    .local v3, "mac":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .local v7, "udid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v4

    .local v4, "model":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Lcom/mob/tools/utils/Data;->SHA1(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/mob/tools/utils/Data;->byteToHex([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .end local v0    # "bytes":[B
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "mac":Ljava/lang/String;
    .end local v4    # "model":Ljava/lang/String;
    .end local v7    # "udid":Ljava/lang/String;
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v10, :cond_2

    :cond_1
    invoke-virtual {p0, v10}, Lcom/mob/tools/utils/DeviceHelper;->getCharAndNumr(I)Ljava/lang/String;

    move-result-object v5

    :cond_2
    if-eqz v5, :cond_3

    :try_start_2
    invoke-direct {p0, v5}, Lcom/mob/tools/utils/DeviceHelper;->saveLocalDeviceKey(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_3
    move-object v2, v5

    goto :goto_1

    :catch_1
    move-exception v6

    .restart local v6    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    goto :goto_2

    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v6

    .restart local v6    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "uimode"

    invoke-direct {p0, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    .local v1, "um":Landroid/app/UiModeManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .end local v0    # "type":I
    :cond_0
    const-string v2, "UNDEFINED"

    :goto_0
    return-object v2

    .restart local v0    # "type":I
    :pswitch_0
    const-string v2, "NO_UI"

    goto :goto_0

    :pswitch_1
    const-string v2, "DESK"

    goto :goto_0

    :pswitch_2
    const-string v2, "CAR"

    goto :goto_0

    :pswitch_3
    const-string v2, "TELEVISION"

    goto :goto_0

    :pswitch_4
    const-string v2, "APPLIANCE"

    goto :goto_0

    :pswitch_5
    const-string v2, "WATCH"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "phone"

    invoke-direct {p0, v4}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .local v1, "phone":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    .local v0, "deviceId":Ljava/lang/String;
    :try_start_0
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v4}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "phone"

    invoke-direct {p0, v4}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .local v1, "phone":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    .local v0, "imsi":Ljava/lang/String;
    :try_start_0
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v4}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 6

    .prologue
    :try_start_0
    const-string v5, "android.permission.INTERNET"

    invoke-virtual {p0, v5}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    instance-of v5, v3, Ljava/net/Inet4Address;

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :goto_0
    return-object v5

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    const-string v5, "0.0.0.0"

    goto :goto_0
.end method

.method public getInstalledApp(Z)Ljava/util/ArrayList;
    .locals 14
    .param p1, "includeSystemApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v10, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .local v8, "pm":Landroid/content/pm/PackageManager;
    const-string v10, "getInstalledPackages"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v8, v10, v11}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .local v7, "pis":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .local v6, "pi":Landroid/content/pm/PackageInfo;
    if-nez p1, :cond_1

    invoke-direct {p0, v6}, Lcom/mob/tools/utils/DeviceHelper;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, "app":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "pkg"

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .local v2, "appName":Ljava/lang/String;
    if-nez v2, :cond_3

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v10, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .local v1, "appLbl":I
    if-lez v1, :cond_2

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v10, v1, v11}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .local v5, "label":Ljava/lang/CharSequence;
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .end local v5    # "label":Ljava/lang/CharSequence;
    :cond_2
    if-nez v2, :cond_3

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v1    # "appLbl":I
    :cond_3
    const-string v10, "name"

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "version"

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "app":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "appName":Ljava/lang/String;
    .end local v3    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .end local v7    # "pis":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v9

    .local v9, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_4
    return-object v3
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v1, "phone"

    invoke-direct {p0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    const-string v1, "-1"

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLocation(IIZ)Landroid/location/Location;
    .locals 3
    .param p1, "GPSTimeout"    # I
    .param p2, "networkTimeout"    # I
    .param p3, "useLastKnown"    # Z

    .prologue
    :try_start_0
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/mob/tools/utils/LocationHelper;

    invoke-direct {v0}, Lcom/mob/tools/utils/LocationHelper;-><init>()V

    .local v0, "helper":Lcom/mob/tools/utils/LocationHelper;
    iget-object v2, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/mob/tools/utils/LocationHelper;->getLocation(Landroid/content/Context;IIZ)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0    # "helper":Lcom/mob/tools/utils/LocationHelper;
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLocation(II)[F
    .locals 7
    .param p1, "GPSTimeout"    # I
    .param p2, "networkTimeout"    # I

    .prologue
    const/4 v6, 0x1

    invoke-virtual {p0, p1, p2, v6}, Lcom/mob/tools/utils/DeviceHelper;->getLocation(IIZ)Landroid/location/Location;

    move-result-object v0

    .local v0, "loc":Landroid/location/Location;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    double-to-float v3, v4

    aput v3, v1, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v6

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMCC()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x3

    const-string v3, "phone"

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getMNC()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x5

    const-string v3, "phone"

    invoke-direct {p0, v3}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_3

    const/4 v0, 0x0

    .local v0, "hd":Ljava/lang/String;
    :try_start_0
    const-string v7, "wlan0"

    invoke-direct {p0, v7}, Lcom/mob/tools/utils/DeviceHelper;->getHardwareAddressFromShell(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    :try_start_1
    invoke-direct {p0}, Lcom/mob/tools/utils/DeviceHelper;->getCurrentNetworkHardwareAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    :try_start_2
    invoke-direct {p0}, Lcom/mob/tools/utils/DeviceHelper;->listNetworkHardwareAddress()[Ljava/lang/String;

    move-result-object v1

    .local v1, "hds":[Ljava/lang/String;
    array-length v7, v1

    if-lez v7, :cond_1

    const/4 v7, 0x0

    aget-object v0, v1, v7
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .end local v1    # "hds":[Ljava/lang/String;
    :cond_1
    :goto_2
    if-eqz v0, :cond_3

    move-object v6, v0

    .end local v0    # "hd":Ljava/lang/String;
    :cond_2
    :goto_3
    return-object v6

    .restart local v0    # "hd":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0

    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .restart local v4    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_1

    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v4

    .restart local v4    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_2

    .end local v0    # "hd":Ljava/lang/String;
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_3
    const-string v7, "wifi"

    invoke-direct {p0, v7}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .local v5, "wifi":Landroid/net/wifi/WifiManager;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .local v2, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    .local v3, "mac":Ljava/lang/String;
    if-nez v3, :cond_4

    move-object v3, v6

    .end local v3    # "mac":Ljava/lang/String;
    :cond_4
    move-object v6, v3

    goto :goto_3
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "phone"

    invoke-direct {p0, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .local v0, "operator":Ljava/lang/String;
    goto :goto_0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "connectivity"

    invoke-direct {p0, v4}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "conn":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    const-string v4, "none"

    :goto_0
    return-object v4

    :cond_0
    :try_start_0
    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v4}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "none"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const-string v4, "none"

    goto :goto_0

    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .local v1, "network":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const-string v4, "none"

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .local v3, "type":I
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_1
    const-string v4, "wifi"

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/mob/tools/utils/DeviceHelper;->is4GMobileNetwork()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "4G"

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/mob/tools/utils/DeviceHelper;->isFastMobileNetwork()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "3G"

    goto :goto_0

    :cond_5
    const-string v4, "2G"

    goto :goto_0

    :pswitch_3
    const-string v4, "bluetooth"

    goto :goto_0

    :pswitch_4
    const-string v4, "dummy"

    goto :goto_0

    :pswitch_5
    const-string v4, "ethernet"

    goto :goto_0

    :pswitch_6
    const-string v4, "wimax"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getNetworkTypeForStatic()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .local v0, "networkType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "none"

    :goto_0
    return-object v1

    :cond_1
    const-string v1, "4g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "2g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "cell"

    goto :goto_0

    :cond_3
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "wifi"

    goto :goto_0

    :cond_4
    const-string v1, "other"

    goto :goto_0
.end method

.method public getOSCountry()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOSLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOSVersionInt()I
    .locals 1

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getOSVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformCode()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public getRunningApp()Lorg/json/JSONArray;
    .locals 6

    .prologue
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .local v2, "appNmes":Lorg/json/JSONArray;
    const-string v5, "activity"

    invoke-direct {p0, v5}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v1, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public getRunningAppStr()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getRunningApp()Lorg/json/JSONArray;

    move-result-object v0

    .local v0, "apps":Lorg/json/JSONArray;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-lez v1, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSSID()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v5}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "wifi"

    invoke-direct {p0, v5}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .local v3, "wifi":Landroid/net/wifi/WifiManager;
    if-nez v3, :cond_1

    .end local v3    # "wifi":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-object v4

    .restart local v3    # "wifi":Landroid/net/wifi/WifiManager;
    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "ssid":Ljava/lang/String;
    if-nez v1, :cond_2

    move-object v1, v4

    .end local v1    # "ssid":Ljava/lang/String;
    :cond_2
    move-object v4, v1

    goto :goto_0

    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wifi":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v2

    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/utils/R;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    .local v0, "size":[I
    iget-object v1, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSdcardPath()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdcardState()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSerialno()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .local v3, "serialno":Ljava/lang/String;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-lt v5, v6, :cond_0

    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "get":Ljava/lang/reflect/Method;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "ro.serialno"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "unknown"

    aput-object v7, v5, v6

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "get":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v3

    :catch_0
    move-exception v4

    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getSignMD5()Ljava/lang/String;
    .locals 6

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/mob/tools/utils/DeviceHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v2, "signs":[Landroid/content/pm/Signature;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/Data;->MD5([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "signs":[Landroid/content/pm/Signature;
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v1, "phone"

    invoke-direct {p0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    const-string v1, "-1"

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTopTaskPackageName()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .local v1, "hasPer":Z
    :try_start_0
    const-string v6, "android.permission.GET_TASKS"

    invoke-virtual {p0, v6}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_2

    :try_start_1
    const-string v6, "activity"

    invoke-direct {p0, v6}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_0

    move-object v6, v7

    .end local v0    # "am":Landroid/app/ActivityManager;
    :goto_1
    return-object v6

    :catch_0
    move-exception v4

    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0

    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v0    # "am":Landroid/app/ActivityManager;
    :cond_0
    :try_start_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x14

    if-gt v6, v8, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .local v5, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .end local v5    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .local v2, "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .local v3, "processName":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3    # "processName":Ljava/lang/String;
    :catch_1
    move-exception v4

    .restart local v4    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_2
    move-object v6, v7

    goto :goto_1
.end method

.method public hideSoftInput(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v2, "input_method"

    invoke-direct {p0, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "service":Ljava/lang/Object;
    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, v1

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public isMainProcess(I)Z
    .locals 6
    .param p1, "pid"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "application":Ljava/lang/String;
    const-string v5, "activity"

    invoke-direct {p0, v5}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .local v3, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    if-gtz p1, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    if-gtz p1, :cond_4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .local v4, "mPid":I
    :goto_1
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v4, :cond_2

    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "mPid":I
    :cond_4
    move v4, p1

    goto :goto_1
.end method

.method public isRooted()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public ping(Ljava/lang/String;II)Ljava/util/HashMap;
    .locals 21
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "packetsize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .local v16, "sucRes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :try_start_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ping -c "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " -s "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "cmd":Ljava/lang/String;
    add-int/lit8 v4, p3, 0x8

    .local v4, "bytes":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v14

    .local v14, "p":Ljava/lang/Process;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v14}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .local v8, "isr":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v3, "br":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "line":Ljava/lang/String;
    :goto_0
    if-eqz v10, :cond_5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bytes from"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    const-string v18, "ms"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    :cond_0
    :goto_1
    const-string v18, "time="

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .local v7, "i":I
    if-lez v7, :cond_1

    add-int/lit8 v18, v7, 0x5

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    :try_start_1
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .end local v7    # "i":I
    :cond_1
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_2
    const-string v18, "s"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "000"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .restart local v7    # "i":I
    :catch_0
    move-exception v17

    .local v17, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "bytes":I
    .end local v5    # "cmd":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v10    # "line":Ljava/lang/String;
    .end local v14    # "p":Ljava/lang/Process;
    .end local v17    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v17

    .restart local v17    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .end local v17    # "t":Ljava/lang/Throwable;
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, "sucCount":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    sub-int v6, p2, v18

    .local v6, "fldCount":I
    const/4 v13, 0x0

    .local v13, "min":F
    const/4 v12, 0x0

    .local v12, "max":F
    const/4 v2, 0x0

    .local v2, "average":F
    if-lez v15, :cond_7

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v15, :cond_6

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .local v9, "item":F
    cmpg-float v18, v9, v13

    if-gez v18, :cond_3

    move v13, v9

    :cond_3
    cmpl-float v18, v9, v12

    if-lez v18, :cond_4

    move v12, v9

    :cond_4
    add-float/2addr v2, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .end local v2    # "average":F
    .end local v6    # "fldCount":I
    .end local v7    # "i":I
    .end local v9    # "item":F
    .end local v12    # "max":F
    .end local v13    # "min":F
    .end local v15    # "sucCount":I
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "bytes":I
    .restart local v5    # "cmd":Ljava/lang/String;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v14    # "p":Ljava/lang/Process;
    :cond_5
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "bytes":I
    .end local v5    # "cmd":Ljava/lang/String;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v10    # "line":Ljava/lang/String;
    .end local v14    # "p":Ljava/lang/Process;
    .restart local v2    # "average":F
    .restart local v6    # "fldCount":I
    .restart local v7    # "i":I
    .restart local v12    # "max":F
    .restart local v13    # "min":F
    .restart local v15    # "sucCount":I
    :cond_6
    int-to-float v0, v15

    move/from16 v18, v0

    div-float v2, v2, v18

    .end local v7    # "i":I
    :cond_7
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "address"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v18, "transmitted"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v18, "received"

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v18, "loss"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v18, "min"

    invoke-static {v13}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v18, "max"

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v18, "avg"

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v11
.end method

.method public showSoftInput(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v2, "input_method"

    invoke-direct {p0, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "service":Ljava/lang/Object;
    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, v1

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    goto :goto_0
.end method
