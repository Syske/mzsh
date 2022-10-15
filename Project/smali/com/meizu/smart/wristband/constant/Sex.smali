.class public final enum Lcom/meizu/smart/wristband/constant/Sex;
.super Ljava/lang/Enum;
.source "Sex.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/smart/wristband/constant/Sex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/smart/wristband/constant/Sex;

.field public static final enum FEMALE:Lcom/meizu/smart/wristband/constant/Sex;

.field public static final enum MALE:Lcom/meizu/smart/wristband/constant/Sex;


# instance fields
.field private code:Ljava/lang/String;

.field private stringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lcom/meizu/smart/wristband/constant/Sex;

    const-string v1, "MALE"

    const-string v2, "1"

    const v3, 0x7f08024b

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/meizu/smart/wristband/constant/Sex;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/Sex;->MALE:Lcom/meizu/smart/wristband/constant/Sex;

    new-instance v0, Lcom/meizu/smart/wristband/constant/Sex;

    const-string v1, "FEMALE"

    const-string v2, "0"

    const v3, 0x7f08024a

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/meizu/smart/wristband/constant/Sex;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/constant/Sex;->FEMALE:Lcom/meizu/smart/wristband/constant/Sex;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/meizu/smart/wristband/constant/Sex;

    sget-object v1, Lcom/meizu/smart/wristband/constant/Sex;->MALE:Lcom/meizu/smart/wristband/constant/Sex;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/smart/wristband/constant/Sex;->FEMALE:Lcom/meizu/smart/wristband/constant/Sex;

    aput-object v1, v0, v5

    sput-object v0, Lcom/meizu/smart/wristband/constant/Sex;->$VALUES:[Lcom/meizu/smart/wristband/constant/Sex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "stringId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/meizu/smart/wristband/constant/Sex;->code:Ljava/lang/String;

    .line 19
    iput p4, p0, Lcom/meizu/smart/wristband/constant/Sex;->stringId:I

    .line 20
    return-void
.end method

.method public static convert(Ljava/lang/String;)Lcom/meizu/smart/wristband/constant/Sex;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/meizu/smart/wristband/constant/Sex;->MALE:Lcom/meizu/smart/wristband/constant/Sex;

    .line 36
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    sget-object v0, Lcom/meizu/smart/wristband/constant/Sex;->FEMALE:Lcom/meizu/smart/wristband/constant/Sex;

    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convert1(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/smart/wristband/constant/Sex;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-object v0, Lcom/meizu/smart/wristband/constant/Sex;->MALE:Lcom/meizu/smart/wristband/constant/Sex;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/constant/Sex;->getStringId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/meizu/smart/wristband/constant/Sex;->MALE:Lcom/meizu/smart/wristband/constant/Sex;

    .line 45
    :goto_0
    return-object v0

    .line 42
    :cond_0
    sget-object v0, Lcom/meizu/smart/wristband/constant/Sex;->FEMALE:Lcom/meizu/smart/wristband/constant/Sex;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/constant/Sex;->getStringId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Lcom/meizu/smart/wristband/constant/Sex;->FEMALE:Lcom/meizu/smart/wristband/constant/Sex;

    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/smart/wristband/constant/Sex;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/meizu/smart/wristband/constant/Sex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/constant/Sex;

    return-object v0
.end method

.method public static values()[Lcom/meizu/smart/wristband/constant/Sex;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/meizu/smart/wristband/constant/Sex;->$VALUES:[Lcom/meizu/smart/wristband/constant/Sex;

    invoke-virtual {v0}, [Lcom/meizu/smart/wristband/constant/Sex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/smart/wristband/constant/Sex;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/smart/wristband/constant/Sex;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getStringId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/meizu/smart/wristband/constant/Sex;->stringId:I

    return v0
.end method
