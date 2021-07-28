.class public final LseC/dujmehn/z/r;
.super Ljava/lang/Object;


# static fields
.field private static q:C

.field private static final r:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    nop

    nop

    nop

    const/16 v0, 0x3d

    nop

    nop

    sput-char v0, LseC/dujmehn/z/r;->q:C

    nop

    nop

    const/16 v0, 0x40

    nop

    nop

    new-array v0, v0, [C

    nop

    nop

    fill-array-data v0, :array_0

    nop

    nop

    sput-object v0, LseC/dujmehn/z/r;->r:[C

    nop

    nop

    return-void

    nop

    nop

    :array_0
    nop

    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    nop
.end method

.method public static q([B)Ljava/lang/String;
    .locals 7

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    if-nez p0, :cond_0

    nop

    nop

    const-string v0, ""

    nop

    nop

    :goto_0
    nop

    return-object v0

    nop

    nop

    :cond_0
    nop

    array-length v1, p0

    nop

    nop

    add-int/lit8 v1, v1, 0x2

    nop

    nop

    div-int/lit8 v1, v1, 0x3

    nop

    nop

    mul-int/lit8 v1, v1, 0x4

    nop

    nop

    new-array v2, v1, [C

    nop

    nop

    move v1, v0

    nop

    nop

    :goto_1
    nop

    array-length v3, p0

    nop

    nop

    add-int/lit8 v3, v3, -0x2

    nop

    nop

    if-ge v0, v3, :cond_1

    nop

    nop

    aget-byte v3, p0, v0

    nop

    nop

    and-int/lit16 v3, v3, 0xff

    nop

    nop

    shl-int/lit8 v3, v3, 0x10

    nop

    nop

    add-int/lit8 v4, v0, 0x1

    nop

    nop

    aget-byte v4, p0, v4

    nop

    nop

    and-int/lit16 v4, v4, 0xff

    nop

    nop

    shl-int/lit8 v4, v4, 0x8

    nop

    nop

    add-int/2addr v3, v4

    nop

    nop

    add-int/lit8 v4, v0, 0x2

    nop

    nop

    aget-byte v4, p0, v4

    nop

    nop

    and-int/lit16 v4, v4, 0xff

    nop

    nop

    add-int/2addr v3, v4

    nop

    nop

    add-int/lit8 v4, v1, 0x1

    nop

    nop

    sget-object v5, LseC/dujmehn/z/r;->r:[C

    nop

    nop

    shr-int/lit8 v6, v3, 0x12

    nop

    nop

    aget-char v5, v5, v6

    nop

    nop

    aput-char v5, v2, v1

    nop

    nop

    add-int/lit8 v1, v4, 0x1

    nop

    nop

    sget-object v5, LseC/dujmehn/z/r;->r:[C

    nop

    nop

    shr-int/lit8 v6, v3, 0xc

    nop

    nop

    and-int/lit8 v6, v6, 0x3f

    nop

    nop

    aget-char v5, v5, v6

    nop

    nop

    aput-char v5, v2, v4

    nop

    nop

    add-int/lit8 v4, v1, 0x1

    nop

    nop

    sget-object v5, LseC/dujmehn/z/r;->r:[C

    nop

    nop

    shr-int/lit8 v6, v3, 0x6

    nop

    nop

    and-int/lit8 v6, v6, 0x3f

    nop

    nop

    aget-char v5, v5, v6

    nop

    nop

    aput-char v5, v2, v1

    nop

    nop

    add-int/lit8 v1, v4, 0x1

    nop

    nop

    sget-object v5, LseC/dujmehn/z/r;->r:[C

    nop

    nop

    and-int/lit8 v3, v3, 0x3f

    nop

    nop

    aget-char v3, v5, v3

    nop

    nop

    aput-char v3, v2, v4

    nop

    nop

    add-int/lit8 v0, v0, 0x3

    nop

    nop

    goto/16 :goto_1

    nop

    nop

    :cond_1
    nop

    array-length v0, p0

    nop

    nop

    rem-int/lit8 v0, v0, 0x3

    nop

    nop

    packed-switch v0, :pswitch_data_0

    nop

    nop

    :goto_2
    nop

    new-instance v0, Ljava/lang/String;

    nop

    nop

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    nop

    nop

    goto/16 :goto_0

    nop

    nop

    :pswitch_0
    nop

    array-length v0, p0

    nop

    nop

    add-int/lit8 v0, v0, -0x1

    nop

    nop

    aget-byte v0, p0, v0

    nop

    nop

    and-int/lit16 v0, v0, 0xff

    nop

    nop

    shl-int/lit8 v0, v0, 0x10

    nop

    nop

    add-int/lit8 v3, v1, 0x1

    nop

    nop

    sget-object v4, LseC/dujmehn/z/r;->r:[C

    nop

    nop

    shr-int/lit8 v5, v0, 0x12

    nop

    nop

    aget-char v4, v4, v5

    nop

    nop

    aput-char v4, v2, v1

    nop

    nop

    add-int/lit8 v1, v3, 0x1

    nop

    nop

    sget-object v4, LseC/dujmehn/z/r;->r:[C

    nop

    nop

    shr-int/lit8 v0, v0, 0xc

    nop

    nop

    and-int/lit8 v0, v0, 0x3f

    nop

    nop

    aget-char v0, v4, v0

    nop

    nop

    aput-char v0, v2, v3

    nop

    nop

    add-int/lit8 v0, v1, 0x1

    nop

    nop

    sget-char v3, LseC/dujmehn/z/r;->q:C

    nop

    nop

    aput-char v3, v2, v1

    nop

    nop

    sget-char v1, LseC/dujmehn/z/r;->q:C

    nop

    nop

    aput-char v1, v2, v0

    nop

    nop

    goto :goto_2

    nop

    nop

    :pswitch_1
    nop

    array-length v0, p0

    nop

    nop

    add-int/lit8 v0, v0, -0x2

    nop

    nop

    aget-byte v0, p0, v0

    nop

    nop

    and-int/lit16 v0, v0, 0xff

    nop

    nop

    shl-int/lit8 v0, v0, 0x10

    nop

    nop

    array-length v3, p0

    nop

    nop

    add-int/lit8 v3, v3, -0x1

    nop

    nop

    aget-byte v3, p0, v3

    nop

    nop

    and-int/lit16 v3, v3, 0xff

    nop

    nop

    shl-int/lit8 v3, v3, 0x8

    nop

    nop

    add-int/2addr v0, v3

    nop

    nop

    add-int/lit8 v3, v1, 0x1

    nop

    nop

    sget-object v4, LseC/dujmehn/z/r;->r:[C

    nop

    nop

    shr-int/lit8 v5, v0, 0x12

    nop

    nop

    aget-char v4, v4, v5

    nop

    nop

    aput-char v4, v2, v1

    nop

    nop

    add-int/lit8 v1, v3, 0x1

    nop

    nop

    sget-object v4, LseC/dujmehn/z/r;->r:[C

    nop

    nop

    shr-int/lit8 v5, v0, 0xc

    nop

    nop

    and-int/lit8 v5, v5, 0x3f

    nop

    nop

    aget-char v4, v4, v5

    nop

    nop

    aput-char v4, v2, v3

    nop

    nop

    add-int/lit8 v3, v1, 0x1

    nop

    nop

    sget-object v4, LseC/dujmehn/z/r;->r:[C

    nop

    nop

    shr-int/lit8 v0, v0, 0x6

    nop

    nop

    and-int/lit8 v0, v0, 0x3f

    nop

    nop

    aget-char v0, v4, v0

    nop

    nop

    aput-char v0, v2, v1

    nop

    nop

    sget-char v0, LseC/dujmehn/z/r;->q:C

    nop

    nop

    aput-char v0, v2, v3

    nop

    nop

    goto/16 :goto_2

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
