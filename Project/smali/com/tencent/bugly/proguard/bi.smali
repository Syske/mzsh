.class public final Lcom/tencent/bugly/proguard/bi;
.super Lcom/tencent/bugly/proguard/m;
.source "BUGLY"


# static fields
.field static y:[B

.field static z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:[B

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/lang/String;

.field public m:J

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:J

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 166
    const/4 v0, 0x1

    new-array v0, v0, [B

    check-cast v0, [B

    sput-object v0, Lcom/tencent/bugly/proguard/bi;->y:[B

    .line 168
    sget-object v0, Lcom/tencent/bugly/proguard/bi;->y:[B

    check-cast v0, [B

    aput-byte v1, v0, v1

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/bi;->z:Ljava/util/Map;

    .line 173
    const-string v0, ""

    .line 174
    const-string v1, ""

    .line 175
    sget-object v2, Lcom/tencent/bugly/proguard/bi;->z:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/m;-><init>()V

    .line 11
    iput v1, p0, Lcom/tencent/bugly/proguard/bi;->a:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->b:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->c:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->d:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->e:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->f:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/tencent/bugly/proguard/bi;->g:I

    .line 25
    iput-object v2, p0, Lcom/tencent/bugly/proguard/bi;->h:[B

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->i:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->j:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->l:Ljava/lang/String;

    .line 35
    iput-wide v4, p0, Lcom/tencent/bugly/proguard/bi;->m:J

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->n:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->o:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->p:Ljava/lang/String;

    .line 43
    iput-wide v4, p0, Lcom/tencent/bugly/proguard/bi;->q:J

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->r:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->s:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->t:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->u:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->v:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->w:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->x:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/bugly/proguard/k;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 180
    iget v0, p0, Lcom/tencent/bugly/proguard/bi;->a:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/tencent/bugly/proguard/k;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/bi;->a:I

    .line 181
    invoke-virtual {p1, v2, v2}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->b:Ljava/lang/String;

    .line 182
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->c:Ljava/lang/String;

    .line 183
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->d:Ljava/lang/String;

    .line 184
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->e:Ljava/lang/String;

    .line 185
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->f:Ljava/lang/String;

    .line 186
    iget v0, p0, Lcom/tencent/bugly/proguard/bi;->g:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/k;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/bi;->g:I

    .line 187
    sget-object v0, Lcom/tencent/bugly/proguard/bi;->y:[B

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/k;->a([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->h:[B

    .line 188
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->i:Ljava/lang/String;

    .line 189
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->j:Ljava/lang/String;

    .line 190
    sget-object v0, Lcom/tencent/bugly/proguard/bi;->z:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    .line 191
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->l:Ljava/lang/String;

    .line 192
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/bi;->m:J

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/k;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/bi;->m:J

    .line 193
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->n:Ljava/lang/String;

    .line 194
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->o:Ljava/lang/String;

    .line 195
    const/16 v0, 0xf

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->p:Ljava/lang/String;

    .line 196
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/bi;->q:J

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/k;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/bi;->q:J

    .line 197
    const/16 v0, 0x11

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->r:Ljava/lang/String;

    .line 198
    const/16 v0, 0x12

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->s:Ljava/lang/String;

    .line 199
    const/16 v0, 0x13

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->t:Ljava/lang/String;

    .line 200
    const/16 v0, 0x14

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->u:Ljava/lang/String;

    .line 201
    const/16 v0, 0x15

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->v:Ljava/lang/String;

    .line 202
    const/16 v0, 0x16

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->w:Ljava/lang/String;

    .line 203
    const/16 v0, 0x17

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bi;->x:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public a(Lcom/tencent/bugly/proguard/l;)V
    .locals 3

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/bugly/proguard/bi;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(II)V

    .line 94
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 95
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 96
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 97
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 102
    iget v0, p0, Lcom/tencent/bugly/proguard/bi;->g:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(II)V

    .line 103
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->h:[B

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a([BI)V

    .line 104
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->i:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->j:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/util/Map;I)V

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->l:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 118
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->l:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 120
    :cond_4
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/bi;->m:J

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/l;->a(JI)V

    .line 121
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->n:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 123
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->n:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->o:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 127
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->o:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 129
    :cond_6
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->p:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 131
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->p:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 133
    :cond_7
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/bi;->q:J

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/l;->a(JI)V

    .line 134
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->r:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 136
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->r:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 138
    :cond_8
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->s:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 140
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->s:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 142
    :cond_9
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->t:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 144
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->t:Ljava/lang/String;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 146
    :cond_a
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->u:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 148
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->u:Ljava/lang/String;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 150
    :cond_b
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->v:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 152
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->v:Ljava/lang/String;

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 154
    :cond_c
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->w:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 156
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->w:Ljava/lang/String;

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 158
    :cond_d
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->x:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 160
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bi;->x:Ljava/lang/String;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 162
    :cond_e
    return-void
.end method
