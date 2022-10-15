.class public Lcom/meizu/smart/wristband/models/newwork/FormFile;
.super Ljava/lang/Object;
.source "FormFile.java"


# instance fields
.field private contentType:Ljava/lang/String;

.field private data:[B

.field private file:Ljava/io/File;

.field private filname:Ljava/lang/String;

.field private inStream:Ljava/io/InputStream;

.field private parameterName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "filname"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "parameterName"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v1, "application/octet-stream"

    iput-object v1, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->contentType:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->filname:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->parameterName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->file:Ljava/io/File;

    .line 52
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->inStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->contentType:Ljava/lang/String;

    .line 57
    :cond_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "filname"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "parameterName"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "application/octet-stream"

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->contentType:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->data:[B

    .line 34
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->filname:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->parameterName:Ljava/lang/String;

    .line 36
    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->contentType:Ljava/lang/String;

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->data:[B

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFilname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->filname:Ljava/lang/String;

    return-object v0
.end method

.method public getInStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->inStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->parameterName:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->contentType:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setFilname(Ljava/lang/String;)V
    .locals 0
    .param p1, "filname"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->filname:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setParameterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/FormFile;->parameterName:Ljava/lang/String;

    .line 85
    return-void
.end method
