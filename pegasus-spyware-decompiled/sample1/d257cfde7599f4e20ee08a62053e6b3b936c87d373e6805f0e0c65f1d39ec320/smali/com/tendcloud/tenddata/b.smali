.class public Lcom/tendcloud/tenddata/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tendcloud/tenddata/h;
.implements Lcom/tendcloud/tenddata/l;


# static fields
.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field public g:I

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/b;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/b;->b:J

    iput v2, p0, Lcom/tendcloud/tenddata/b;->c:I

    iput v2, p0, Lcom/tendcloud/tenddata/b;->g:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/b;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/b;->i:Ljava/util/List;

    iput v2, p0, Lcom/tendcloud/tenddata/b;->j:I

    iput v2, p0, Lcom/tendcloud/tenddata/b;->k:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/tendcloud/tenddata/p;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/b;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/p;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/tendcloud/tenddata/b;->b:J

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/p;->c(J)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tendcloud/tenddata/b;->c:I

    invoke-static {v1}, Lcom/tendcloud/tenddata/p;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tendcloud/tenddata/b;->g:I

    invoke-static {v1}, Lcom/tendcloud/tenddata/p;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tendcloud/tenddata/b;->k:I

    invoke-static {v1}, Lcom/tendcloud/tenddata/p;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/b;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/p;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/b;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/z;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/z;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/p;->c(I)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/b;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/af;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/af;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_1
    return v1
.end method

.method public a(Lcom/tendcloud/tenddata/p;)V
    .locals 2

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->b(I)Lcom/tendcloud/tenddata/p;

    iget-object v0, p0, Lcom/tendcloud/tenddata/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/p;

    iget-wide v0, p0, Lcom/tendcloud/tenddata/b;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/tendcloud/tenddata/p;->a(J)Lcom/tendcloud/tenddata/p;

    iget v0, p0, Lcom/tendcloud/tenddata/b;->c:I

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->a(I)Lcom/tendcloud/tenddata/p;

    iget v0, p0, Lcom/tendcloud/tenddata/b;->g:I

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->a(I)Lcom/tendcloud/tenddata/p;

    iget-object v0, p0, Lcom/tendcloud/tenddata/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->b(I)Lcom/tendcloud/tenddata/p;

    iget-object v0, p0, Lcom/tendcloud/tenddata/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/z;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->a(Lcom/tendcloud/tenddata/h;)Lcom/tendcloud/tenddata/p;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->b(I)Lcom/tendcloud/tenddata/p;

    iget-object v0, p0, Lcom/tendcloud/tenddata/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/af;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->a(Lcom/tendcloud/tenddata/h;)Lcom/tendcloud/tenddata/p;

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/tendcloud/tenddata/b;->k:I

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->a(I)Lcom/tendcloud/tenddata/p;

    return-void
.end method
