.class public Lcom/tendcloud/tenddata/p;
.super Ljava/lang/Object;


# instance fields
.field protected a:[B

.field protected b:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    iput-object p1, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    return-void
.end method

.method public static b(D)I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public static b(F)I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public static b(Z)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static b([B)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    array-length v0, p0

    invoke-static {v0}, Lcom/tendcloud/tenddata/p;->c(I)I

    move-result v0

    array-length v1, p0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static c(I)I
    .locals 1

    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static c(J)I
    .locals 6

    const/16 v0, 0x9

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-wide/16 v4, -0x20

    cmp-long v4, p0, v4

    if-gez v4, :cond_4

    const-wide/16 v4, -0x8000

    cmp-long v4, p0, v4

    if-gez v4, :cond_2

    const-wide/32 v2, -0x80000000

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x80

    cmp-long v0, p0, v0

    if-gez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    const-wide/16 v4, 0x80

    cmp-long v4, p0, v4

    if-gez v4, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const-wide/32 v4, 0x10000

    cmp-long v4, p0, v4

    if-gez v4, :cond_7

    const-wide/16 v0, 0x100

    cmp-long v0, p0, v0

    if-gez v0, :cond_6

    move v0, v3

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    const-wide v2, 0x100000000L

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lcom/tendcloud/tenddata/p;->c(I)I

    move-result v1

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/tendcloud/tenddata/p;
    .locals 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    const/16 v1, -0x3e

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-object p0
.end method

.method public a(B)Lcom/tendcloud/tenddata/p;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/p;->b(B)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    return-object v0
.end method

.method public a(D)Lcom/tendcloud/tenddata/p;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/tendcloud/tenddata/p;->c(D)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    return-object v0
.end method

.method public a(F)Lcom/tendcloud/tenddata/p;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/p;->c(F)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/tendcloud/tenddata/p;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/p;->d(I)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/tendcloud/tenddata/p;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/tendcloud/tenddata/p;->b(J)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/tendcloud/tenddata/h;)Lcom/tendcloud/tenddata/p;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->b()Lcom/tendcloud/tenddata/p;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-interface {p1, p0}, Lcom/tendcloud/tenddata/h;->a(Lcom/tendcloud/tenddata/p;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Boolean;)Lcom/tendcloud/tenddata/p;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->b()Lcom/tendcloud/tenddata/p;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->c()Lcom/tendcloud/tenddata/p;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->a()Lcom/tendcloud/tenddata/p;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Byte;)Lcom/tendcloud/tenddata/p;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->b()Lcom/tendcloud/tenddata/p;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/p;->b(B)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Double;)Lcom/tendcloud/tenddata/p;
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->b()Lcom/tendcloud/tenddata/p;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/p;->c(D)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Float;)Lcom/tendcloud/tenddata/p;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->b()Lcom/tendcloud/tenddata/p;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/p;->c(F)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Integer;)Lcom/tendcloud/tenddata/p;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->b()Lcom/tendcloud/tenddata/p;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/p;->d(I)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Long;)Lcom/tendcloud/tenddata/p;
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->b()Lcom/tendcloud/tenddata/p;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/p;->b(J)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Short;)Lcom/tendcloud/tenddata/p;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->b()Lcom/tendcloud/tenddata/p;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/p;->b(S)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/tendcloud/tenddata/p;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/p;->b(Ljava/lang/String;)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/p;->b(Ljava/lang/String;)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/math/BigInteger;)Lcom/tendcloud/tenddata/p;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->b()Lcom/tendcloud/tenddata/p;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/p;->b(Ljava/math/BigInteger;)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteBuffer;)Lcom/tendcloud/tenddata/p;
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->b()Lcom/tendcloud/tenddata/p;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/p;->f(I)Lcom/tendcloud/tenddata/p;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/p;->b([BII)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/util/List;)Lcom/tendcloud/tenddata/p;
    .locals 2

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->b()Lcom/tendcloud/tenddata/p;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/p;->b(I)Lcom/tendcloud/tenddata/p;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/p;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/p;

    goto :goto_0
.end method

.method public a(Ljava/util/Map;)Lcom/tendcloud/tenddata/p;
    .locals 6

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->b()Lcom/tendcloud/tenddata/p;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/p;->e(I)Lcom/tendcloud/tenddata/p;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tendcloud/tenddata/p;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/p;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_6

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/p;->a(D)Lcom/tendcloud/tenddata/p;

    goto :goto_1

    :cond_6
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/p;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/p;

    goto :goto_1
.end method

.method public a(S)Lcom/tendcloud/tenddata/p;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/p;->b(S)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lcom/tendcloud/tenddata/p;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->c()Lcom/tendcloud/tenddata/p;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->a()Lcom/tendcloud/tenddata/p;

    move-result-object v0

    goto :goto_0
.end method

.method public a([B)Lcom/tendcloud/tenddata/p;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->b()Lcom/tendcloud/tenddata/p;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/p;->f(I)Lcom/tendcloud/tenddata/p;

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/p;->d([B)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    goto :goto_0
.end method

.method public a([BII)Lcom/tendcloud/tenddata/p;
    .locals 1

    invoke-virtual {p0, p3}, Lcom/tendcloud/tenddata/p;->f(I)Lcom/tendcloud/tenddata/p;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tendcloud/tenddata/p;->b([BII)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    return-object v0
.end method

.method public a([Ljava/lang/Long;)Lcom/tendcloud/tenddata/p;
    .locals 4

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->b()Lcom/tendcloud/tenddata/p;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/p;->b(I)Lcom/tendcloud/tenddata/p;

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/tendcloud/tenddata/p;->a(J)Lcom/tendcloud/tenddata/p;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()Lcom/tendcloud/tenddata/p;
    .locals 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    const/16 v1, -0x40

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-object p0
.end method

.method public b(B)Lcom/tendcloud/tenddata/p;
    .locals 4

    const/4 v3, 0x0

    const/16 v0, -0x20

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x30

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public b(I)Lcom/tendcloud/tenddata/p;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    or-int/lit16 v0, p1, 0x90

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-object p0

    :cond_0
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x24

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    invoke-virtual {v0, v1, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x23

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v1, 0x4

    shr-int/lit8 v2, p1, 0x0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public b(J)Lcom/tendcloud/tenddata/p;
    .locals 9

    const/4 v8, 0x3

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v0, -0x20

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    const-wide/16 v0, -0x8000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x2d

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, 0x38

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, 0x30

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, 0x28

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v1, 0x4

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v1, 0x5

    const/16 v2, 0x18

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v1, 0x6

    const/16 v2, 0x10

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v1, 0x7

    shr-long v2, p1, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-long v1, p1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x2e

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, 0x18

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, 0x10

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-long v1, p1, v7

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v1, 0x4

    shr-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x80

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x2f

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-long v1, p1, v7

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-long v1, p1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    invoke-virtual {v0, v1, v4, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x30

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    long-to-int v1, p1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    invoke-virtual {v0, v1, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x80

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    long-to-int v1, p1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_4
    const-wide/32 v0, 0x10000

    cmp-long v0, p1, v0

    if-gez v0, :cond_6

    const-wide/16 v0, 0x100

    cmp-long v0, p1, v0

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x34

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    long-to-int v1, p1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    invoke-virtual {v0, v1, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x33

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const-wide/32 v1, 0xff00

    and-long/2addr v1, p1

    shr-long/2addr v1, v7

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const-wide/16 v1, 0xff

    and-long/2addr v1, p1

    shr-long/2addr v1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    invoke-virtual {v0, v1, v4, v8}, Ljava/io/OutputStream;->write([BII)V

    goto/16 :goto_0

    :cond_6
    const-wide v0, 0x100000000L

    cmp-long v0, p1, v0

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x32

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const-wide/32 v1, -0x1000000

    and-long/2addr v1, p1

    const/16 v3, 0x18

    shr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const-wide/32 v1, 0xff0000

    and-long/2addr v1, p1

    const/16 v3, 0x10

    shr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const-wide/32 v1, 0xff00

    and-long/2addr v1, p1

    shr-long/2addr v1, v7

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v1, 0x4

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x31

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, 0x38

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, 0x30

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, 0x28

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v1, 0x4

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v1, 0x5

    const/16 v2, 0x18

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v1, 0x6

    const/16 v2, 0x10

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v1, 0x7

    shr-long v2, p1, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-long v1, p1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/tendcloud/tenddata/p;
    .locals 2

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/tendcloud/tenddata/p;->f(I)Lcom/tendcloud/tenddata/p;

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/p;->d([B)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/math/BigInteger;)Lcom/tendcloud/tenddata/p;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/p;->b(J)Lcom/tendcloud/tenddata/p;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x31

    aput-byte v1, v0, v4

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x8

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x7

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x3

    array-length v3, v0

    add-int/lit8 v3, v3, -0x6

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x4

    array-length v3, v0

    add-int/lit8 v3, v3, -0x5

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x5

    array-length v3, v0

    add-int/lit8 v3, v3, -0x4

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x6

    array-length v3, v0

    add-int/lit8 v3, v3, -0x3

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x7

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v2, 0x8

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v0, v0, v3

    aput-byte v0, v1, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "can\'t pack BigInteger larger than 0xffffffffffffffff"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/nio/ByteBuffer;)Lcom/tendcloud/tenddata/p;
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/p;->f(I)Lcom/tendcloud/tenddata/p;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/p;->b([BII)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    return-object v0
.end method

.method public b(S)Lcom/tendcloud/tenddata/p;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, -0x20

    if-ge p1, v0, :cond_1

    const/16 v0, -0x80

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x2f

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    invoke-virtual {v0, v1, v2, v5}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x30

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x80

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x100

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x34

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x33

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    invoke-virtual {v0, v1, v2, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public b([BII)Lcom/tendcloud/tenddata/p;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-object p0
.end method

.method public c()Lcom/tendcloud/tenddata/p;
    .locals 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    const/16 v1, -0x3d

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-object p0
.end method

.method public c(D)Lcom/tendcloud/tenddata/p;
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x35

    aput-byte v1, v0, v6

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    iget-object v2, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v3, 0x1

    const/16 v4, 0x38

    shr-long v4, v0, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v3, 0x2

    const/16 v4, 0x30

    shr-long v4, v0, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v3, 0x3

    const/16 v4, 0x28

    shr-long v4, v0, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v3, 0x4

    const/16 v4, 0x20

    shr-long v4, v0, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v3, 0x5

    const/16 v4, 0x18

    shr-long v4, v0, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v3, 0x6

    const/16 v4, 0x10

    shr-long v4, v0, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v3, 0x7

    shr-long v4, v0, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-long/2addr v0, v6

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v2, v7

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    return-object p0
.end method

.method public c(F)Lcom/tendcloud/tenddata/p;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x36

    aput-byte v1, v0, v4

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x1

    shr-int/lit8 v3, v0, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x2

    shr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x3

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x4

    shr-int/lit8 v0, v0, 0x0

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    return-object p0
.end method

.method public c(Z)Lcom/tendcloud/tenddata/p;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->c()Lcom/tendcloud/tenddata/p;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/p;->a()Lcom/tendcloud/tenddata/p;

    move-result-object v0

    goto :goto_0
.end method

.method public c([B)Lcom/tendcloud/tenddata/p;
    .locals 2

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/p;->f(I)Lcom/tendcloud/tenddata/p;

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tendcloud/tenddata/p;->b([BII)Lcom/tendcloud/tenddata/p;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/tendcloud/tenddata/p;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v0, -0x20

    if-ge p1, v0, :cond_2

    const/16 v0, -0x8000

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x2e

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-object p0

    :cond_0
    const/16 v0, -0x80

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x2f

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    invoke-virtual {v0, v1, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x30

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x80

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x100

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x34

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_4
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x33

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    invoke-virtual {v0, v1, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x32

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto/16 :goto_0
.end method

.method public d([B)Lcom/tendcloud/tenddata/p;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-object p0
.end method

.method public e(I)Lcom/tendcloud/tenddata/p;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    or-int/lit16 v0, p1, 0x80

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-object p0

    :cond_0
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x22

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    invoke-virtual {v0, v1, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x21

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v1, 0x4

    shr-int/lit8 v2, p1, 0x0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public f(I)Lcom/tendcloud/tenddata/p;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    or-int/lit16 v0, p1, 0xa0

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-object p0

    :cond_0
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x26

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    invoke-virtual {v0, v1, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/16 v1, -0x25

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v1, 0x4

    shr-int/lit8 v2, p1, 0x0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/p;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/p;->a:[B

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
