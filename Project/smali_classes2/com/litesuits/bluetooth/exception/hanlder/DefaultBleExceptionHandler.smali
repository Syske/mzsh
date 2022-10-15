.class public Lcom/litesuits/bluetooth/exception/hanlder/DefaultBleExceptionHandler;
.super Lcom/litesuits/bluetooth/exception/hanlder/BleExceptionHandler;
.source "DefaultBleExceptionHandler.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/litesuits/bluetooth/exception/hanlder/BleExceptionHandler;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/litesuits/bluetooth/exception/hanlder/DefaultBleExceptionHandler;->context:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method protected onConnectException(Lcom/litesuits/bluetooth/exception/ConnectException;)V
    .locals 3
    .param p1, "e"    # Lcom/litesuits/bluetooth/exception/ConnectException;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/litesuits/bluetooth/exception/hanlder/DefaultBleExceptionHandler;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/litesuits/bluetooth/exception/ConnectException;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 23
    return-void
.end method

.method protected onGattException(Lcom/litesuits/bluetooth/exception/GattException;)V
    .locals 3
    .param p1, "e"    # Lcom/litesuits/bluetooth/exception/GattException;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/litesuits/bluetooth/exception/hanlder/DefaultBleExceptionHandler;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/litesuits/bluetooth/exception/GattException;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 28
    return-void
.end method

.method protected onInitiatedException(Lcom/litesuits/bluetooth/exception/InitiatedException;)V
    .locals 3
    .param p1, "e"    # Lcom/litesuits/bluetooth/exception/InitiatedException;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/litesuits/bluetooth/exception/hanlder/DefaultBleExceptionHandler;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/litesuits/bluetooth/exception/InitiatedException;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 38
    return-void
.end method

.method protected onOtherException(Lcom/litesuits/bluetooth/exception/OtherException;)V
    .locals 3
    .param p1, "e"    # Lcom/litesuits/bluetooth/exception/OtherException;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/litesuits/bluetooth/exception/hanlder/DefaultBleExceptionHandler;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/litesuits/bluetooth/exception/OtherException;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 43
    return-void
.end method

.method protected onTimeoutException(Lcom/litesuits/bluetooth/exception/TimeoutException;)V
    .locals 3
    .param p1, "e"    # Lcom/litesuits/bluetooth/exception/TimeoutException;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/litesuits/bluetooth/exception/hanlder/DefaultBleExceptionHandler;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/litesuits/bluetooth/exception/TimeoutException;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 33
    return-void
.end method
