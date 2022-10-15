.class public abstract Lcom/litesuits/bluetooth/exception/hanlder/BleExceptionHandler;
.super Ljava/lang/Object;
.source "BleExceptionHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Lcom/litesuits/bluetooth/exception/BleException;)Lcom/litesuits/bluetooth/exception/hanlder/BleExceptionHandler;
    .locals 1
    .param p1, "exception"    # Lcom/litesuits/bluetooth/exception/BleException;

    .prologue
    .line 12
    if-eqz p1, :cond_0

    .line 13
    instance-of v0, p1, Lcom/litesuits/bluetooth/exception/ConnectException;

    if-eqz v0, :cond_1

    .line 14
    check-cast p1, Lcom/litesuits/bluetooth/exception/ConnectException;

    .end local p1    # "exception":Lcom/litesuits/bluetooth/exception/BleException;
    invoke-virtual {p0, p1}, Lcom/litesuits/bluetooth/exception/hanlder/BleExceptionHandler;->onConnectException(Lcom/litesuits/bluetooth/exception/ConnectException;)V

    .line 25
    :cond_0
    :goto_0
    return-object p0

    .line 15
    .restart local p1    # "exception":Lcom/litesuits/bluetooth/exception/BleException;
    :cond_1
    instance-of v0, p1, Lcom/litesuits/bluetooth/exception/GattException;

    if-eqz v0, :cond_2

    .line 16
    check-cast p1, Lcom/litesuits/bluetooth/exception/GattException;

    .end local p1    # "exception":Lcom/litesuits/bluetooth/exception/BleException;
    invoke-virtual {p0, p1}, Lcom/litesuits/bluetooth/exception/hanlder/BleExceptionHandler;->onGattException(Lcom/litesuits/bluetooth/exception/GattException;)V

    goto :goto_0

    .line 17
    .restart local p1    # "exception":Lcom/litesuits/bluetooth/exception/BleException;
    :cond_2
    instance-of v0, p1, Lcom/litesuits/bluetooth/exception/TimeoutException;

    if-eqz v0, :cond_3

    .line 18
    check-cast p1, Lcom/litesuits/bluetooth/exception/TimeoutException;

    .end local p1    # "exception":Lcom/litesuits/bluetooth/exception/BleException;
    invoke-virtual {p0, p1}, Lcom/litesuits/bluetooth/exception/hanlder/BleExceptionHandler;->onTimeoutException(Lcom/litesuits/bluetooth/exception/TimeoutException;)V

    goto :goto_0

    .line 19
    .restart local p1    # "exception":Lcom/litesuits/bluetooth/exception/BleException;
    :cond_3
    instance-of v0, p1, Lcom/litesuits/bluetooth/exception/InitiatedException;

    if-eqz v0, :cond_4

    .line 20
    check-cast p1, Lcom/litesuits/bluetooth/exception/InitiatedException;

    .end local p1    # "exception":Lcom/litesuits/bluetooth/exception/BleException;
    invoke-virtual {p0, p1}, Lcom/litesuits/bluetooth/exception/hanlder/BleExceptionHandler;->onInitiatedException(Lcom/litesuits/bluetooth/exception/InitiatedException;)V

    goto :goto_0

    .line 22
    .restart local p1    # "exception":Lcom/litesuits/bluetooth/exception/BleException;
    :cond_4
    check-cast p1, Lcom/litesuits/bluetooth/exception/OtherException;

    .end local p1    # "exception":Lcom/litesuits/bluetooth/exception/BleException;
    invoke-virtual {p0, p1}, Lcom/litesuits/bluetooth/exception/hanlder/BleExceptionHandler;->onOtherException(Lcom/litesuits/bluetooth/exception/OtherException;)V

    goto :goto_0
.end method

.method protected abstract onConnectException(Lcom/litesuits/bluetooth/exception/ConnectException;)V
.end method

.method protected abstract onGattException(Lcom/litesuits/bluetooth/exception/GattException;)V
.end method

.method protected abstract onInitiatedException(Lcom/litesuits/bluetooth/exception/InitiatedException;)V
.end method

.method protected abstract onOtherException(Lcom/litesuits/bluetooth/exception/OtherException;)V
.end method

.method protected abstract onTimeoutException(Lcom/litesuits/bluetooth/exception/TimeoutException;)V
.end method
