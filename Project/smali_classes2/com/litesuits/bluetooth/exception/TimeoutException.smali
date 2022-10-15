.class public Lcom/litesuits/bluetooth/exception/TimeoutException;
.super Lcom/litesuits/bluetooth/exception/BleException;
.source "TimeoutException.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    const/4 v0, 0x1

    const-string v1, "Timeout Exception Occurred! "

    invoke-direct {p0, v0, v1}, Lcom/litesuits/bluetooth/exception/BleException;-><init>(ILjava/lang/String;)V

    .line 10
    return-void
.end method
