.class public Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;
.super Ljava/lang/Object;
.source "AimSetdata.java"


# instance fields
.field private sleepAim:Ljava/lang/String;

.field private sportAim:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSleepAim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;->sleepAim:Ljava/lang/String;

    return-object v0
.end method

.method public getSportAim()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;->sportAim:I

    return v0
.end method

.method public setSleepAim(Ljava/lang/String;)V
    .locals 0
    .param p1, "sleepAim"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;->sleepAim:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setSportAim(I)V
    .locals 0
    .param p1, "sportAim"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/AimSetdata;->sportAim:I

    .line 22
    return-void
.end method
