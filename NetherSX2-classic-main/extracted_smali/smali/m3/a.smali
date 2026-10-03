.class public Lm3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[Ljava/lang/Object;

.field public c:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Lm3/a;->b:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 2

    iput p2, p0, Lm3/a;->a:I

    const-string v0, "The max pool size must be > 0"

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 4
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lm3/a;->b:[Ljava/lang/Object;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_2

    .line 7
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lm3/a;->b:[Ljava/lang/Object;

    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lm3/a;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget v0, p0, Lm3/a;->c:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    iget-object v2, p0, Lm3/a;->b:[Ljava/lang/Object;

    aget-object v3, v2, v0

    .line 3
    aput-object v1, v2, v0

    .line 4
    iput v0, p0, Lm3/a;->c:I

    move-object v1, v3

    :cond_0
    return-object v1

    .line 5
    :goto_0
    iget v0, p0, Lm3/a;->c:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 6
    iget-object v2, p0, Lm3/a;->b:[Ljava/lang/Object;

    aget-object v3, v2, v0

    .line 7
    aput-object v1, v2, v0

    .line 8
    iput v0, p0, Lm3/a;->c:I

    move-object v1, v3

    :cond_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 5

    iget v0, p0, Lm3/a;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget v0, p0, Lm3/a;->c:I

    iget-object v3, p0, Lm3/a;->b:[Ljava/lang/Object;

    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 2
    aput-object p1, v3, v0

    add-int/2addr v0, v1

    .line 3
    iput v0, p0, Lm3/a;->c:I

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :goto_1
    move v0, v2

    .line 4
    :goto_2
    iget v3, p0, Lm3/a;->c:I

    if-ge v0, v3, :cond_2

    .line 5
    iget-object v4, p0, Lm3/a;->b:[Ljava/lang/Object;

    aget-object v4, v4, v0

    if-ne v4, p1, :cond_1

    move v0, v1

    goto :goto_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_3
    if-nez v0, :cond_4

    .line 6
    iget-object v0, p0, Lm3/a;->b:[Ljava/lang/Object;

    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 7
    aput-object p1, v0, v3

    add-int/2addr v3, v1

    .line 8
    iput v3, p0, Lm3/a;->c:I

    goto :goto_4

    :cond_3
    move v1, v2

    :goto_4
    return v1

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already in the pool!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
