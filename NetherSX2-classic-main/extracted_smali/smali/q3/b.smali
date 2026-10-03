.class public final synthetic Lq3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic b:Lq3/b;

.field public static final synthetic c:Lq3/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lq3/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq3/b;-><init>(I)V

    sput-object v0, Lq3/b;->b:Lq3/b;

    new-instance v0, Lq3/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lq3/b;-><init>(I)V

    sput-object v0, Lq3/b;->c:Lq3/b;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lq3/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    iget v0, p0, Lq3/b;->a:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p1, Lxyz/aethersx2/android/Achievement;

    check-cast p2, Lxyz/aethersx2/android/Achievement;

    sget v0, Lq3/c;->w0:I

    .line 1
    invoke-virtual {p2}, Lxyz/aethersx2/android/Achievement;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lxyz/aethersx2/android/Achievement;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lxyz/aethersx2/android/Achievement;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lxyz/aethersx2/android/Achievement;->isLocked()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lxyz/aethersx2/android/Achievement;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lxyz/aethersx2/android/Achievement;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    .line 4
    :goto_1
    check-cast p1, Lxyz/aethersx2/android/i;

    check-cast p2, Lxyz/aethersx2/android/i;

    .line 5
    iget-wide v3, p2, Lxyz/aethersx2/android/i;->c:J

    iget-wide p1, p1, Lxyz/aethersx2/android/i;->c:J

    sub-long/2addr v3, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v3, p1

    if-gez p1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
