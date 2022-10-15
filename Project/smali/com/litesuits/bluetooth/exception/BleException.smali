.class public abstract Lcom/litesuits/bluetooth/exception/BleException;
.super Ljava/lang/Object;
.source "BleException.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ERROR_CODE_GATT:I = 0xc9

.field public static final ERROR_CODE_INITIAL:I = 0x65

.field public static final ERROR_CODE_TIMEOUT:I = 0x1

.field public static final GATT_CODE_OTHER:I = 0x12d

.field public static final TIMEOUT_EXCEPTION:Lcom/litesuits/bluetooth/exception/TimeoutException;

.field private static final serialVersionUID:J = 0x6f1564f58c14d61cL


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/litesuits/bluetooth/exception/TimeoutException;

    invoke-direct {v0}, Lcom/litesuits/bluetooth/exception/TimeoutException;-><init>()V

    sput-object v0, Lcom/litesuits/bluetooth/exception/BleException;->TIMEOUT_EXCEPTION:Lcom/litesuits/bluetooth/exception/TimeoutException;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/litesuits/bluetooth/exception/BleException;->code:I

    .line 24
    iput-object p2, p0, Lcom/litesuits/bluetooth/exception/BleException;->description:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/litesuits/bluetooth/exception/BleException;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/litesuits/bluetooth/exception/BleException;->description:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)Lcom/litesuits/bluetooth/exception/BleException;
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/litesuits/bluetooth/exception/BleException;->code:I

    .line 33
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/litesuits/bluetooth/exception/BleException;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/litesuits/bluetooth/exception/BleException;->description:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleException{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/litesuits/bluetooth/exception/BleException;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/litesuits/bluetooth/exception/BleException;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
