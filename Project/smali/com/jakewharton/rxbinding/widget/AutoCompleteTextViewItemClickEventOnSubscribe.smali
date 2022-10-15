.class final Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;
.super Ljava/lang/Object;
.source "AutoCompleteTextViewItemClickEventOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final view:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;->view:Landroid/widget/AutoCompleteTextView;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;->view:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEvent;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 25
    new-instance v0, Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;Lrx/Subscriber;)V

    .line 32
    .local v0, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;->view:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 34
    new-instance v1, Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/widget/AutoCompleteTextViewItemClickEventOnSubscribe;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 39
    return-void
.end method
