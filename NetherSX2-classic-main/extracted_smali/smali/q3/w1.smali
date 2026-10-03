.class public final synthetic Lq3/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$e;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lxyz/aethersx2/android/f$c;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/f$c;I)V
    .locals 0

    iput p2, p0, Lq3/w1;->c:I

    iput-object p1, p0, Lq3/w1;->d:Lxyz/aethersx2/android/f$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroidx/preference/Preference;)Z
    .locals 6

    iget p1, p0, Lq3/w1;->c:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lq3/w1;->d:Lxyz/aethersx2/android/f$c;

    .line 1
    iget-object p1, p1, Lxyz/aethersx2/android/f$a;->k0:Lxyz/aethersx2/android/f;

    invoke-static {p1, v1}, Lxyz/aethersx2/android/f;->y(Lxyz/aethersx2/android/f;Z)V

    return v0

    .line 2
    :pswitch_1
    iget-object p1, p0, Lq3/w1;->d:Lxyz/aethersx2/android/f$c;

    .line 3
    iget-object p1, p1, Lxyz/aethersx2/android/f$a;->k0:Lxyz/aethersx2/android/f;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lxyz/aethersx2/android/f;->f0:Lq3/a2;

    .line 6
    iget-object v2, v2, Lq3/a2;->a:Ljava/lang/String;

    .line 7
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 10
    :cond_0
    iget-object v1, p1, Lxyz/aethersx2/android/f;->f0:Lq3/a2;

    invoke-virtual {v1}, Lq3/a2;->p()V

    .line 11
    invoke-virtual {p1}, Lxyz/aethersx2/android/f;->B()V

    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1000c5

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v0

    .line 14
    :goto_1
    iget-object p1, p0, Lq3/w1;->d:Lxyz/aethersx2/android/f$c;

    .line 15
    iget-object p1, p1, Lxyz/aethersx2/android/f$a;->k0:Lxyz/aethersx2/android/f;

    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 17
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->getHotkeyInfoList()[Lxyz/aethersx2/android/HotkeyInfo;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    .line 18
    :cond_1
    array-length v4, v3

    :goto_2
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 19
    invoke-virtual {v5}, Lxyz/aethersx2/android/HotkeyInfo;->getBindingConfigKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lxyz/aethersx2/android/f;->z(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {p1}, Lxyz/aethersx2/android/f;->B()V

    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1000bf

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
