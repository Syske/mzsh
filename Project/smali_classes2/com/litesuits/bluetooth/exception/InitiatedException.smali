.class public Lcom/litesuits/bluetooth/exception/InitiatedException;
.super Lcom/litesuits/bluetooth/exception/BleException;
.source "InitiatedException.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    const/16 v0, 0x65

    const-string v1, "Initiated Exception Occurred! "

    invoke-direct {p0, v0, v1}, Lcom/litesuits/bluetooth/exception/BleException;-><init>(ILjava/lang/String;)V

    .line 10
    return-void
.end method
