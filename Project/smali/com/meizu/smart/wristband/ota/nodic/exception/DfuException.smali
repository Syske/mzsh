.class public Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;
.super Ljava/lang/Exception;
.source "DfuException.java"


# static fields
.field private static final serialVersionUID:J = -0x5fc7dd8cc6605b16L


# instance fields
.field private final mError:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 39
    iput p2, p0, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;->mError:I

    .line 40
    return-void
.end method


# virtual methods
.method public getErrorNumber()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;->mError:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/smart/wristband/ota/nodic/exception/DfuException;->mError:I

    and-int/lit16 v1, v1, -0x4001

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
