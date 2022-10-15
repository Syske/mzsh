.class public Lcom/litesuits/bluetooth/exception/GattException;
.super Lcom/litesuits/bluetooth/exception/BleException;
.source "GattException.java"


# instance fields
.field private gattStatus:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "gattStatus"    # I

    .prologue
    .line 11
    const/16 v0, 0xc9

    const-string v1, "Gatt Exception Occurred! "

    invoke-direct {p0, v0, v1}, Lcom/litesuits/bluetooth/exception/BleException;-><init>(ILjava/lang/String;)V

    .line 12
    iput p1, p0, Lcom/litesuits/bluetooth/exception/GattException;->gattStatus:I

    .line 13
    return-void
.end method


# virtual methods
.method public getGattStatus()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/litesuits/bluetooth/exception/GattException;->gattStatus:I

    return v0
.end method

.method public setGattStatus(I)Lcom/litesuits/bluetooth/exception/GattException;
    .locals 0
    .param p1, "gattStatus"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/litesuits/bluetooth/exception/GattException;->gattStatus:I

    .line 22
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GattException{gattStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/litesuits/bluetooth/exception/GattException;->gattStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    invoke-super {p0}, Lcom/litesuits/bluetooth/exception/BleException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
