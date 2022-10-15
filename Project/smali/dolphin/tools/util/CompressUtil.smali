.class public Ldolphin/tools/util/CompressUtil;
.super Ljava/lang/Object;
.source "CompressUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "paramArrayOfByte"    # [B

    .prologue
    .line 94
    new-instance v1, Ljava/lang/StringBuffer;

    .line 95
    array-length v3, p0

    .line 94
    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 97
    .local v1, "localStringBuffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 99
    :cond_0
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 101
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 102
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static gZip([B)[B
    .locals 4
    .param p0, "paramArrayOfByte"    # [B

    .prologue
    .line 14
    const/4 v0, 0x0

    .line 16
    .local v0, "arrayOfByte":[B
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 17
    .local v1, "b":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 18
    .local v2, "localGZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 19
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 20
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 21
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 22
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .end local v1    # "b":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "localGZIPOutputStream":Ljava/util/zip/GZIPOutputStream;
    :goto_0
    return-object v0

    .line 23
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static unGZip([B)[B
    .locals 8
    .param p0, "paramArrayOfByte"    # [B

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, "arrayOfByte1":[B
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 32
    .local v2, "b":Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    .local v5, "localGZIPInputStream":Ljava/util/zip/GZIPInputStream;
    const/16 v6, 0x400

    new-array v1, v6, [B

    .line 34
    .local v1, "arrayOfByte2":[B
    const/4 v3, 0x0

    .line 35
    .local v3, "i":I
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    .local v4, "localByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    const/4 v6, 0x0

    .line 37
    array-length v7, v1

    .line 36
    invoke-virtual {v5, v1, v6, v7}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v3

    .line 37
    const/4 v6, -0x1

    .line 36
    if-ne v3, v6, :cond_0

    .line 40
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 41
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 42
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 43
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 44
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 47
    .end local v1    # "arrayOfByte2":[B
    .end local v2    # "b":Ljava/io/ByteArrayInputStream;
    .end local v3    # "i":I
    .end local v4    # "localByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "localGZIPInputStream":Ljava/util/zip/GZIPInputStream;
    :goto_1
    return-object v0

    .line 38
    .restart local v1    # "arrayOfByte2":[B
    .restart local v2    # "b":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "i":I
    .restart local v4    # "localByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "localGZIPInputStream":Ljava/util/zip/GZIPInputStream;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v1    # "arrayOfByte2":[B
    .end local v2    # "b":Ljava/io/ByteArrayInputStream;
    .end local v3    # "i":I
    .end local v4    # "localByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "localGZIPInputStream":Ljava/util/zip/GZIPInputStream;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static unZip([B)[B
    .locals 8
    .param p0, "paramArrayOfByte"    # [B

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, "arrayOfByte1":[B
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 73
    .local v2, "b":Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 74
    .local v5, "localZipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_0
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-nez v6, :cond_0

    .line 86
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    .line 87
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 90
    .end local v2    # "b":Ljava/io/ByteArrayInputStream;
    .end local v5    # "localZipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_1
    return-object v0

    .line 75
    .restart local v2    # "b":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "localZipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_0
    const/16 v6, 0x400

    new-array v1, v6, [B

    .line 76
    .local v1, "arrayOfByte2":[B
    const/4 v3, 0x0

    .line 77
    .local v3, "i":I
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 78
    .local v4, "localByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :goto_2
    const/4 v6, 0x0

    .line 79
    array-length v7, v1

    .line 78
    invoke-virtual {v5, v1, v6, v7}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v3

    .line 79
    const/4 v6, -0x1

    .line 78
    if-ne v3, v6, :cond_1

    .line 82
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 83
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 84
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_0

    .line 88
    .end local v1    # "arrayOfByte2":[B
    .end local v2    # "b":Ljava/io/ByteArrayInputStream;
    .end local v3    # "i":I
    .end local v4    # "localByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "localZipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 80
    .restart local v1    # "arrayOfByte2":[B
    .restart local v2    # "b":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "i":I
    .restart local v4    # "localByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "localZipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public static zip([B)[B
    .locals 6
    .param p0, "paramArrayOfByte"    # [B

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "arrayOfByte":[B
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 54
    .local v1, "b":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 56
    .local v3, "localZipOutputStream":Ljava/util/zip/ZipOutputStream;
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string/jumbo v4, "zip"

    invoke-direct {v2, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 57
    .local v2, "localZipEntry":Ljava/util/zip/ZipEntry;
    array-length v4, p0

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 58
    invoke-virtual {v3, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 59
    invoke-virtual {v3, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 60
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 61
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 62
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 63
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1    # "b":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "localZipEntry":Ljava/util/zip/ZipEntry;
    .end local v3    # "localZipOutputStream":Ljava/util/zip/ZipOutputStream;
    :goto_0
    return-object v0

    .line 64
    :catch_0
    move-exception v4

    goto :goto_0
.end method
