.class public final synthetic Lg0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic b:Lg0/d;

.field public static final synthetic c:Lg0/d;

.field public static final synthetic d:Lg0/d;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lg0/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg0/d;-><init>(I)V

    sput-object v0, Lg0/d;->b:Lg0/d;

    new-instance v0, Lg0/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg0/d;-><init>(I)V

    sput-object v0, Lg0/d;->c:Lg0/d;

    new-instance v0, Lg0/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg0/d;-><init>(I)V

    sput-object v0, Lg0/d;->d:Lg0/d;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg0/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lg0/d;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, [B

    check-cast p2, [B

    .line 1
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 2
    array-length p1, p1

    array-length p2, p2

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 4
    aget-byte v2, p1, v1

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_1

    .line 5
    aget-byte p1, p1, v1

    aget-byte p2, p2, v1

    :goto_1
    sub-int v0, p1, p2

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v0

    .line 6
    :goto_3
    check-cast p1, Lxyz/aethersx2/android/Leaderboard;

    check-cast p2, Lxyz/aethersx2/android/Leaderboard;

    sget v0, Lxyz/aethersx2/android/LeaderboardListFragment;->z0:I

    .line 7
    invoke-virtual {p1}, Lxyz/aethersx2/android/Leaderboard;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lxyz/aethersx2/android/Leaderboard;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
