.class public Lcom/litesuits/bluetooth/exception/OtherException;
.super Lcom/litesuits/bluetooth/exception/BleException;
.source "OtherException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 9
    const/16 v0, 0x12d

    invoke-direct {p0, v0, p1}, Lcom/litesuits/bluetooth/exception/BleException;-><init>(ILjava/lang/String;)V

    .line 10
    return-void
.end method
