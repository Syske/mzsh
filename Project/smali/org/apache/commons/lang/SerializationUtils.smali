.class public Lorg/apache/commons/lang/SerializationUtils;
.super Ljava/lang/Object;
.source "SerializationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static clone(Ljava/io/Serializable;)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/io/Serializable;

    .prologue
    .line 80
    invoke-static {p0}, Lorg/apache/commons/lang/SerializationUtils;->serialize(Ljava/io/Serializable;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/SerializationUtils;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static deserialize(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 155
    if-nez p0, :cond_0

    .line 156
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The InputStream must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_0
    const/4 v1, 0x0

    .line 161
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 170
    if-eqz v2, :cond_1

    .line 171
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 175
    :cond_1
    :goto_0
    return-object v3

    .line 164
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    :goto_1
    :try_start_3
    new-instance v3, Lorg/apache/commons/lang/SerializationException;

    invoke-direct {v3, v0}, Lorg/apache/commons/lang/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v3

    .line 170
    :goto_2
    if-eqz v1, :cond_2

    .line 171
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 175
    :cond_2
    :goto_3
    throw v3

    .line 166
    :catch_1
    move-exception v0

    .line 167
    .local v0, "ex":Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v3, Lorg/apache/commons/lang/SerializationException;

    invoke-direct {v3, v0}, Lorg/apache/commons/lang/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 173
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v4

    goto :goto_3

    .line 169
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 166
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 164
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method public static deserialize([B)Ljava/lang/Object;
    .locals 3
    .param p0, "objectData"    # [B

    .prologue
    .line 188
    if-nez p0, :cond_0

    .line 189
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The byte[] must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 192
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/apache/commons/lang/SerializationUtils;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "obj"    # Ljava/io/Serializable;
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The OutputStream must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    :cond_0
    const/4 v1, 0x0

    .line 107
    .local v1, "out":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .local v2, "out":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    if-eqz v2, :cond_1

    .line 115
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 121
    :cond_1
    :goto_0
    return-void

    .line 110
    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "ex":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v3, Lorg/apache/commons/lang/SerializationException;

    invoke-direct {v3, v0}, Lorg/apache/commons/lang/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 114
    :goto_2
    if-eqz v1, :cond_2

    .line 115
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 119
    :cond_2
    :goto_3
    throw v3

    .line 117
    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "out":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v4

    goto :goto_3

    .line 113
    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "out":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 110
    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "out":Ljava/io/ObjectOutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method

.method public static serialize(Ljava/io/Serializable;)[B
    .locals 2
    .param p0, "obj"    # Ljava/io/Serializable;

    .prologue
    .line 132
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 133
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/apache/commons/lang/SerializationUtils;->serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V

    .line 134
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
