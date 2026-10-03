.class public final synthetic Lq3/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$e;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lxyz/aethersx2/android/j$c;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/j$c;I)V
    .locals 0

    iput p2, p0, Lq3/s2;->c:I

    iput-object p1, p0, Lq3/s2;->d:Lxyz/aethersx2/android/j$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroidx/preference/Preference;)Z
    .locals 6

    iget p1, p0, Lq3/s2;->c:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lq3/s2;->d:Lxyz/aethersx2/android/j$c;

    sget-object v1, Lxyz/aethersx2/android/j$c;->k0:[Lxyz/aethersx2/android/MemoryCardNamePreference;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->getActivity()Landroidx/fragment/app/o;

    move-result-object v2

    const-class v3, Lxyz/aethersx2/android/CreateMemoryCardActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/n;->startActivityForResult(Landroid/content/Intent;I)V

    return v0

    .line 2
    :goto_0
    iget-object p1, p0, Lq3/s2;->d:Lxyz/aethersx2/android/j$c;

    sget-object v1, Lxyz/aethersx2/android/j$c;->k0:[Lxyz/aethersx2/android/MemoryCardNamePreference;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lxyz/aethersx2/android/j$c;->k0:[Lxyz/aethersx2/android/MemoryCardNamePreference;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_3

    aget-object v3, v1, v0

    if-nez v3, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lxyz/aethersx2/android/MemoryCardNamePreference;->X()Ljava/lang/String;

    move-result-object v3

    .line 5
    aget-object v4, v1, v0

    invoke-virtual {v4}, Lxyz/aethersx2/android/MemoryCardNamePreference;->X()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    aget-object v2, v1, v2

    invoke-virtual {v2, v4}, Lxyz/aethersx2/android/MemoryCardNamePreference;->Y(Ljava/lang/String;)V

    .line 8
    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lxyz/aethersx2/android/MemoryCardNamePreference;->Y(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f100140

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f100141

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
