.class Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "HelpActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field private generals:[[Ljava/lang/String;

.field private generalsTypes:[Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;)V
    .locals 10
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 62
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 67
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v2, 0x7f080150

    .line 68
    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v2, 0x7f080162

    .line 69
    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v2, 0x7f080169

    .line 70
    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v2, 0x7f080170

    .line 71
    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v2, 0x7f080174

    .line 72
    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f080179

    .line 73
    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f080153

    .line 74
    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f08017b

    .line 75
    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f080155

    .line 76
    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f080157

    .line 77
    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f080159

    .line 78
    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f080151

    .line 79
    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->generalsTypes:[Ljava/lang/String;

    .line 84
    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f08015c

    .line 85
    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f08015d

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f08015e

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f08015f

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f080160

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v4, 0x7f080161

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f080163

    .line 86
    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f080164

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f080165

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f080166

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f080167

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v4, 0x7f080168

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f08016a

    .line 87
    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f08016b

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f08016c

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f08016d

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f08016e

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v4, 0x7f08016f

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f080171

    .line 88
    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f080172

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f080173

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    new-array v1, v9, [Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f080175

    .line 89
    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f080176

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f080177

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v3, 0x7f080178

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v4, 0x7f08017a

    .line 90
    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v4, 0x7f080154

    .line 91
    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v4, 0x7f08017c

    .line 92
    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v4, 0x7f08017d

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v4, 0x7f080156

    .line 93
    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v4, 0x7f080158

    .line 94
    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v4, 0x7f08015a

    .line 95
    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v4, 0x7f08015b

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    const v4, 0x7f080152

    .line 96
    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->generals:[[Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->generals:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 148
    int-to-long v0, p2

    return-wide v0
.end method

.method getChildTextView()Landroid/widget/TextView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 112
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x2

    const/16 v3, 0x64

    invoke-direct {v0, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 113
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    invoke-direct {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;-><init>(Landroid/content/Context;)V

    .line 114
    .local v1, "textView":Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setGravity(I)V

    .line 116
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v4, v4, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setPadding(IIII)V

    .line 117
    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setTextSize(F)V

    .line 118
    return-object v1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 175
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04005b

    const/4 v4, 0x0

    .line 176
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 177
    .local v0, "child":Landroid/widget/LinearLayout;
    const v2, 0x7f0e0231

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 178
    .local v1, "textView":Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    invoke-virtual {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->generals:[[Ljava/lang/String;

    aget-object v0, v0, p1

    array-length v0, v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->generalsTypes:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->generalsTypes:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 143
    int-to-long v0, p1

    return-wide v0
.end method

.method getGroupTextView()Landroid/widget/TextView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 102
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x64

    invoke-direct {v0, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 103
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    invoke-direct {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;-><init>(Landroid/content/Context;)V

    .line 104
    .local v1, "textView":Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setGravity(I)V

    .line 106
    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setPadding(IIII)V

    .line 107
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setTextSize(F)V

    .line 108
    return-object v1
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 159
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04005c

    const/4 v5, 0x0

    .line 160
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 161
    .local v1, "group":Landroid/widget/LinearLayout;
    const v3, 0x7f0e0233

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, "diver":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 163
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :goto_0
    const v3, 0x7f0e0232

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 168
    .local v2, "textView":Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$MyAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-object v1

    .line 165
    .end local v2    # "textView":Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method
