.class public abstract LCharacterEncoder;
.super Ljava/lang/Object;
.source "CharacterEncoder.java"


# instance fields
.field protected pStream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method private getBytes(Ljava/nio/ByteBuffer;)[B
    .locals 4
    .param p1, "bytebuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "abyte0":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 112
    .local v1, "abyte1":[B
    array-length v2, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v2, v3, :cond_0

    array-length v2, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 114
    move-object v0, v1

    .line 115
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    .end local v1    # "abyte1":[B
    :cond_0
    if-nez v0, :cond_1

    .line 120
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v0, v2, [B

    .line 121
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 123
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected abstract bytesPerAtom()I
.end method

.method protected abstract bytesPerLine()I
.end method

.method public encode(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2
    .param p1, "bytebuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 135
    invoke-direct {p0, p1}, LCharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 136
    .local v0, "abyte0":[B
    invoke-virtual {p0, v0}, LCharacterEncoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 6
    .param p1, "abyte0"    # [B

    .prologue
    .line 91
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 92
    .local v1, "bytearrayoutputstream":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 93
    .local v0, "bytearrayinputstream":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 96
    .local v3, "s":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v0, v1}, LCharacterEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 97
    const-string v4, "8859_1"

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 103
    return-object v3

    .line 99
    :catch_0
    move-exception v2

    .line 101
    .local v2, "exception":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    const-string v5, "CharacterEncoder.encode internal error"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "inputstream"    # Ljava/io/InputStream;
    .param p2, "outputstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, LCharacterEncoder;->bytesPerLine()I

    move-result v3

    new-array v0, v3, [B

    .line 62
    .local v0, "abyte0":[B
    invoke-virtual {p0, p2}, LCharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    .line 65
    :goto_0
    invoke-virtual {p0, p1, v0}, LCharacterEncoder;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    .line 66
    .local v2, "j":I
    if-nez v2, :cond_1

    .line 79
    :cond_0
    invoke-virtual {p0, p2}, LCharacterEncoder;->encodeBufferSuffix(Ljava/io/OutputStream;)V

    .line 80
    return-void

    .line 68
    :cond_1
    invoke-virtual {p0, p2, v2}, LCharacterEncoder;->encodeLinePrefix(Ljava/io/OutputStream;I)V

    .line 69
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 75
    invoke-virtual {p0}, LCharacterEncoder;->bytesPerLine()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 77
    invoke-virtual {p0, p2}, LCharacterEncoder;->encodeLineSuffix(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0}, LCharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v3, v1

    if-gt v3, v2, :cond_3

    .line 71
    invoke-virtual {p0}, LCharacterEncoder;->bytesPerAtom()I

    move-result v3

    invoke-virtual {p0, p2, v0, v1, v3}, LCharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    .line 69
    :goto_2
    invoke-virtual {p0}, LCharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 73
    :cond_3
    sub-int v3, v2, v1

    invoke-virtual {p0, p2, v0, v1, v3}, LCharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    goto :goto_2
.end method

.method public encode(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "bytebuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "outputstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p1}, LCharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 130
    .local v0, "abyte0":[B
    invoke-virtual {p0, v0, p2}, LCharacterEncoder;->encode([BLjava/io/OutputStream;)V

    .line 131
    return-void
.end method

.method public encode([BLjava/io/OutputStream;)V
    .locals 1
    .param p1, "abyte0"    # [B
    .param p2, "outputstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 86
    .local v0, "bytearrayinputstream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0, v0, p2}, LCharacterEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 87
    return-void
.end method

.method protected abstract encodeAtom(Ljava/io/OutputStream;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public encodeBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2
    .param p1, "bytebuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 193
    invoke-direct {p0, p1}, LCharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 194
    .local v0, "abyte0":[B
    invoke-virtual {p0, v0}, LCharacterEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public encodeBuffer([B)Ljava/lang/String;
    .locals 5
    .param p1, "abyte0"    # [B

    .prologue
    .line 171
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 172
    .local v1, "bytearrayoutputstream":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 175
    .local v0, "bytearrayinputstream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-virtual {p0, v0, v1}, LCharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 177
    :catch_0
    move-exception v2

    .line 179
    .local v2, "exception":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Error;

    const-string v4, "CharacterEncoder.encodeBuffer internal error"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "inputstream"    # Ljava/io/InputStream;
    .param p2, "outputstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, LCharacterEncoder;->bytesPerLine()I

    move-result v3

    new-array v0, v3, [B

    .line 143
    .local v0, "abyte0":[B
    invoke-virtual {p0, p2}, LCharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    .line 147
    :cond_0
    invoke-virtual {p0, p1, v0}, LCharacterEncoder;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    .line 148
    .local v2, "j":I
    if-nez v2, :cond_1

    .line 159
    :goto_0
    invoke-virtual {p0, p2}, LCharacterEncoder;->encodeBufferSuffix(Ljava/io/OutputStream;)V

    .line 160
    return-void

    .line 150
    :cond_1
    invoke-virtual {p0, p2, v2}, LCharacterEncoder;->encodeLinePrefix(Ljava/io/OutputStream;I)V

    .line 151
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 157
    invoke-virtual {p0, p2}, LCharacterEncoder;->encodeLineSuffix(Ljava/io/OutputStream;)V

    .line 158
    invoke-virtual {p0}, LCharacterEncoder;->bytesPerLine()I

    move-result v3

    .line 145
    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0}, LCharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v3, v1

    if-gt v3, v2, :cond_3

    .line 153
    invoke-virtual {p0}, LCharacterEncoder;->bytesPerAtom()I

    move-result v3

    invoke-virtual {p0, p2, v0, v1, v3}, LCharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    .line 151
    :goto_2
    invoke-virtual {p0}, LCharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 155
    :cond_3
    sub-int v3, v2, v1

    invoke-virtual {p0, p2, v0, v1, v3}, LCharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    goto :goto_2
.end method

.method public encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "bytebuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "outputstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0, p1}, LCharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 188
    .local v0, "abyte0":[B
    invoke-virtual {p0, v0, p2}, LCharacterEncoder;->encodeBuffer([BLjava/io/OutputStream;)V

    .line 189
    return-void
.end method

.method public encodeBuffer([BLjava/io/OutputStream;)V
    .locals 1
    .param p1, "abyte0"    # [B
    .param p2, "outputstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 166
    .local v0, "bytearrayinputstream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0, v0, p2}, LCharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 167
    return-void
.end method

.method protected encodeBufferPrefix(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, LCharacterEncoder;->pStream:Ljava/io/PrintStream;

    .line 23
    return-void
.end method

.method protected encodeBufferSuffix(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outputstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    return-void
.end method

.method protected encodeLinePrefix(Ljava/io/OutputStream;I)V
    .locals 0
    .param p1, "outputstream"    # Ljava/io/OutputStream;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    return-void
.end method

.method protected encodeLineSuffix(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, LCharacterEncoder;->pStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 39
    return-void
.end method

.method protected readFully(Ljava/io/InputStream;[B)I
    .locals 3
    .param p1, "inputstream"    # Ljava/io/InputStream;
    .param p2, "abyte0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-lt v0, v2, :cond_1

    .line 55
    array-length v0, p2

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 49
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 50
    .local v1, "j":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 52
    int-to-byte v2, v1

    aput-byte v2, p2, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
