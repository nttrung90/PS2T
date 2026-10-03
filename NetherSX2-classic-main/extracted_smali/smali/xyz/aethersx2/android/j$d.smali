.class public final Lxyz/aethersx2/android/j$d;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/aethersx2/android/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/fragment/app/n;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/n;)V

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public final s(I)Landroidx/fragment/app/n;
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance p1, Landroidx/fragment/app/n;

    invoke-direct {p1}, Landroidx/fragment/app/n;-><init>()V

    return-object p1

    .line 2
    :pswitch_0
    new-instance p1, Lxyz/aethersx2/android/j$a;

    invoke-direct {p1}, Lxyz/aethersx2/android/j$a;-><init>()V

    return-object p1

    .line 3
    :pswitch_1
    new-instance p1, Lq3/g;

    invoke-direct {p1}, Lq3/g;-><init>()V

    return-object p1

    .line 4
    :pswitch_2
    new-instance p1, Lxyz/aethersx2/android/j$b;

    invoke-direct {p1}, Lxyz/aethersx2/android/j$b;-><init>()V

    return-object p1

    .line 5
    :pswitch_3
    new-instance p1, Lq3/v1;

    invoke-direct {p1}, Lq3/v1;-><init>()V

    return-object p1

    .line 6
    :pswitch_4
    new-instance p1, Lxyz/aethersx2/android/j$c;

    invoke-direct {p1}, Lxyz/aethersx2/android/j$c;-><init>()V

    return-object p1

    .line 7
    :pswitch_5
    new-instance p1, Lxyz/aethersx2/android/j$e;

    const v0, 0x7f130005

    invoke-direct {p1, v0}, Lxyz/aethersx2/android/j$e;-><init>(I)V

    return-object p1

    .line 8
    :pswitch_6
    new-instance p1, Lxyz/aethersx2/android/j$e;

    const v0, 0x7f13000c

    invoke-direct {p1, v0}, Lxyz/aethersx2/android/j$e;-><init>(I)V

    return-object p1

    .line 9
    :pswitch_7
    new-instance p1, Lxyz/aethersx2/android/j$e;

    const v0, 0x7f130014

    invoke-direct {p1, v0}, Lxyz/aethersx2/android/j$e;-><init>(I)V

    return-object p1

    .line 10
    :pswitch_8
    new-instance p1, Lxyz/aethersx2/android/j$e;

    const v0, 0x7f13000a

    invoke-direct {p1, v0}, Lxyz/aethersx2/android/j$e;-><init>(I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
