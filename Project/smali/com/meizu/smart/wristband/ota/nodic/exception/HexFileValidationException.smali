.class public Lcom/meizu/smart/wristband/ota/nodic/exception/HexFileValidationException;
.super Ljava/io/IOException;
.source "HexFileValidationException.java"


# static fields
.field private static final serialVersionUID:J = -0x59bfc4d87ddb7c73L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method
