.class final Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;
.super Ljava/lang/Object;
.source "TextViewTextOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private final view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;->view:Landroid/widget/TextView;

    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;->view:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/CharSequence;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 22
    new-instance v0, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;Lrx/Subscriber;)V

    .line 35
    .local v0, "watcher":Landroid/text/TextWatcher;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;->view:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 37
    new-instance v1, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe$2;

    invoke-direct {v1, p0, v0}, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;Landroid/text/TextWatcher;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 44
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;->view:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 45
    return-void
.end method
