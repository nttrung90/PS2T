.class public Lxyz/aethersx2/android/InputBindingPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public T:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public U:Ljava/lang/String;

.field public V:Landroid/widget/TextView;

.field public W:I

.field public X:I

.field public Y:I

.field public Z:I

.field public a0:Landroidx/fragment/app/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lxyz/aethersx2/android/InputBindingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0c004a

    .line 2
    iput p1, p0, Landroidx/preference/Preference;->J:I

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const/4 p3, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lxyz/aethersx2/android/InputBindingPreference;->W:I

    .line 6
    iput p1, p0, Lxyz/aethersx2/android/InputBindingPreference;->X:I

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lxyz/aethersx2/android/InputBindingPreference;->Y:I

    .line 8
    iput p1, p0, Lxyz/aethersx2/android/InputBindingPreference;->Z:I

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lxyz/aethersx2/android/InputBindingPreference;->a0:Landroidx/fragment/app/n;

    const p1, 0x7f0c004a

    .line 10
    iput p1, p0, Landroidx/preference/Preference;->J:I

    .line 11
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()V

    return-void
.end method

.method public static W(Lxyz/aethersx2/android/InputBindingPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->j()Lc1/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lc1/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 8
    :goto_0
    invoke-virtual {p0}, Lxyz/aethersx2/android/InputBindingPreference;->d0()V

    .line 9
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 10
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    const-wide/16 p1, 0x1f4

    const/16 p3, 0xff

    .line 11
    invoke-static {p1, p2, p3}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    .line 12
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1f

    if-lt p2, p3, :cond_1

    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 13
    check-cast p2, Landroid/os/VibratorManager;

    .line 14
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object p3

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/os/Vibrator;

    .line 15
    invoke-virtual {p0}, Landroid/os/Vibrator;->getId()I

    move-result p0

    invoke-virtual {p3, p0, p1}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object p0

    .line 17
    invoke-virtual {p2, p0}, Landroid/os/VibratorManager;->vibrate(Landroid/os/CombinedVibration;)V

    goto :goto_1

    .line 18
    :cond_1
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/os/Vibrator;

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :goto_1
    return-void
.end method

.method public static a0(Landroid/content/Context;Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const v0, 0x7f100054

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 4
    invoke-static {p0}, Lxyz/aethersx2/android/InputBindingPreference;->b0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static b0(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "&"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    .line 4
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_7

    .line 5
    aget-object v4, p0, v3

    const/16 v5, 0x2f

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    .line 7
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v4, v1

    :goto_1
    const/4 v5, -0x1

    .line 10
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v7

    move v8, v2

    .line 11
    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_4

    .line 12
    aget v9, v7, v8

    invoke-static {v9}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 13
    invoke-virtual {v9}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_3

    .line 14
    :cond_2
    invoke-virtual {v9}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-virtual {v9}, Landroid/view/InputDevice;->getId()I

    move-result v5

    goto :goto_4

    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 16
    :cond_4
    :goto_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x28

    if-le v7, v8, :cond_5

    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x14

    .line 18
    invoke-virtual {v7, v6, v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string v9, "..."

    .line 19
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v8

    .line 21
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    .line 22
    invoke-virtual {v7, v6, v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_5
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-gez v5, :cond_6

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v6, v5, v2

    aput-object v4, v5, v8

    const-string v4, "%s[??]%s"

    .line 24
    invoke-static {v4, v5}, Lxyz/aethersx2/android/FileHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_6
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v2

    .line 25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v8

    aput-object v4, v9, v7

    const-string v4, "%s[%d]%s"

    invoke-static {v4, v9}, Lxyz/aethersx2/android/FileHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 26
    :goto_5
    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    const-string p0, " & "

    .line 27
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final X(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 2
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lxyz/aethersx2/android/InputBindingPreference;->T:Ljava/util/Set;

    .line 4
    iget-object p1, p0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    const v0, 0x7f100052

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lxyz/aethersx2/android/InputBindingPreference;->U:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lxyz/aethersx2/android/InputBindingPreference;->e0()V

    return-void
.end method

.method public final Y(Lq3/a2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v0}, Lq3/a2;->q(Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lxyz/aethersx2/android/InputBindingPreference;->T:Ljava/util/Set;

    .line 4
    iget-object p1, p0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    const v0, 0x7f100052

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lxyz/aethersx2/android/InputBindingPreference;->U:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lxyz/aethersx2/android/InputBindingPreference;->e0()V

    return-void
.end method

.method public final Z(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput p1, p0, Lxyz/aethersx2/android/InputBindingPreference;->Y:I

    .line 2
    iput-object p2, p0, Lxyz/aethersx2/android/InputBindingPreference;->R:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lxyz/aethersx2/android/InputBindingPreference;->S:Ljava/lang/String;

    const/4 p3, 0x2

    .line 4
    iput p3, p0, Lxyz/aethersx2/android/InputBindingPreference;->W:I

    .line 5
    iput p3, p0, Lxyz/aethersx2/android/InputBindingPreference;->X:I

    new-array p3, p3, [Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const/4 p1, 0x1

    aput-object p2, p3, p1

    const-string p1, "Pad%d/%s"

    invoke-static {p1, p3}, Lxyz/aethersx2/android/FileHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->K(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lxyz/aethersx2/android/InputBindingPreference;->d0()V

    return-void
.end method

.method public final c0()V
    .locals 9

    .line 1
    iget-object v0, p0, Lxyz/aethersx2/android/InputBindingPreference;->T:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Landroidx/appcompat/app/d$a;

    .line 3
    iget-object v1, p0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v1, p0, Lxyz/aethersx2/android/InputBindingPreference;->T:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lxyz/aethersx2/android/InputBindingPreference;->T:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 7
    iget-object v4, p0, Lxyz/aethersx2/android/InputBindingPreference;->T:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 8
    aput-object v7, v3, v6

    add-int/lit8 v8, v6, 0x1

    .line 9
    invoke-static {v7}, Lxyz/aethersx2/android/InputBindingPreference;->b0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    move v6, v8

    goto :goto_0

    .line 10
    :cond_1
    iget-object v4, p0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    const v7, 0x7f10004e

    .line 11
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    .line 12
    iget-object v4, p0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    const v6, 0x7f100053

    new-array v7, v2, [Ljava/lang/Object;

    .line 13
    iget-object v8, p0, Lxyz/aethersx2/android/InputBindingPreference;->S:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 14
    iget-object v5, v0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v4, v5, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    .line 15
    new-instance v4, Lq3/z0;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v3, v1, v5}, Lq3/z0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/app/d$a;->b([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    const v1, 0x7f100085

    .line 16
    sget-object v3, Lq3/e;->q:Lq3/e;

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/d$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    const v1, 0x7f100050

    .line 17
    new-instance v3, Lq3/b2;

    invoke-direct {v3, p0, v2}, Lq3/b2;-><init>(Lxyz/aethersx2/android/InputBindingPreference;I)V

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/d$a;->f(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 18
    invoke-virtual {v0}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 19
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lxyz/aethersx2/android/InputBindingPreference;->u()V

    return-void
.end method

.method public final d0()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->j()Lc1/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lc1/e;->e(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lxyz/aethersx2/android/InputBindingPreference;->T:Ljava/util/Set;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    .line 5
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6
    iget-object v1, p0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 7
    invoke-static {v0, v1}, Lxyz/aethersx2/android/PreferenceHelpers;->getStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lxyz/aethersx2/android/InputBindingPreference;->T:Ljava/util/Set;

    .line 8
    :goto_0
    iget-object v0, p0, Lxyz/aethersx2/android/InputBindingPreference;->T:Ljava/util/Set;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 9
    :cond_1
    iget v0, p0, Lxyz/aethersx2/android/InputBindingPreference;->W:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lxyz/aethersx2/android/InputBindingPreference;->T:Ljava/util/Set;

    .line 10
    iget-object v2, p0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    .line 11
    invoke-static {v2, v0}, Lxyz/aethersx2/android/InputBindingPreference;->a0(Landroid/content/Context;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroidx/preference/Preference;->j()Lc1/e;

    move-result-object v2

    const-string v3, "Frequency"

    const-string v4, ""

    const-string v5, "Binds"

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    iget-object v8, p0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 15
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lc1/e;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    iget-object v7, p0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 18
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lc1/e;->c(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    .line 19
    :cond_2
    iget-object v2, p0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    .line 20
    invoke-static {v2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    iget-object v8, p0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 23
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    iget-object v7, p0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 26
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 27
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v0, :cond_3

    const-string v0, "N/A"

    :cond_3
    const/4 v3, 0x1

    const/4 v5, 0x2

    if-eqz v2, :cond_4

    .line 28
    iget-object v7, p0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    const v8, 0x7f100097

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v6

    aput-object v4, v1, v3

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    .line 30
    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 31
    :cond_4
    iget-object v1, p0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    const v2, 0x7f100096

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v4, v5, v3

    .line 32
    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 33
    :cond_5
    iget-object v0, p0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    .line 34
    iget-object v1, p0, Lxyz/aethersx2/android/InputBindingPreference;->T:Ljava/util/Set;

    invoke-static {v0, v1}, Lxyz/aethersx2/android/InputBindingPreference;->a0(Landroid/content/Context;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_2
    iput-object v0, p0, Lxyz/aethersx2/android/InputBindingPreference;->U:Ljava/lang/String;

    goto :goto_4

    .line 35
    :cond_7
    :goto_3
    iget-object v0, p0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    const v1, 0x7f100052

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxyz/aethersx2/android/InputBindingPreference;->U:Ljava/lang/String;

    .line 37
    :goto_4
    invoke-virtual {p0}, Lxyz/aethersx2/android/InputBindingPreference;->e0()V

    return-void
.end method

.method public final e0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lxyz/aethersx2/android/InputBindingPreference;->V:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lxyz/aethersx2/android/InputBindingPreference;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final t(Lc1/h;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->t(Lc1/h;)V

    const v0, 0x7f0900a8

    .line 2
    invoke-virtual {p1, v0}, Lc1/h;->x(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0900a9

    .line 3
    invoke-virtual {p1, v1}, Lc1/h;->x(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0900aa

    .line 4
    invoke-virtual {p1, v2}, Lc1/h;->x(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lxyz/aethersx2/android/InputBindingPreference;->V:Landroid/widget/TextView;

    .line 5
    iget v2, p0, Lxyz/aethersx2/android/InputBindingPreference;->X:I

    invoke-static {v2}, Lq/f;->a(I)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_8

    const/4 v5, 0x1

    if-eq v2, v5, :cond_7

    if-eq v2, v4, :cond_0

    const v2, 0x7f080092

    goto/16 :goto_6

    .line 6
    :cond_0
    iget-object v2, p0, Lxyz/aethersx2/android/InputBindingPreference;->R:Ljava/lang/String;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_0
    move v5, v6

    goto :goto_1

    :sswitch_0
    const-string v5, "ToggleTurbo"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x5

    goto :goto_1

    :sswitch_1
    const-string v5, "TogglePause"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    goto :goto_1

    :sswitch_2
    const-string v5, "ToggleFrameLimit"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v5, v3

    goto :goto_1

    :sswitch_3
    const-string v5, "QuickSave"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v5, v4

    goto :goto_1

    :sswitch_4
    const-string v7, "QuickLoad"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :sswitch_5
    const-string v5, "ToggleSlowMotion"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :cond_6
    :goto_1
    packed-switch v5, :pswitch_data_0

    const v2, 0x7f08006e

    goto/16 :goto_6

    :pswitch_0
    const v2, 0x7f0800c5

    goto/16 :goto_6

    :pswitch_1
    const v2, 0x7f0800b8

    goto/16 :goto_6

    :pswitch_2
    const v2, 0x7f0800c4

    goto/16 :goto_6

    :pswitch_3
    const v2, 0x7f0800bb

    goto/16 :goto_6

    :pswitch_4
    const v2, 0x7f0800ba

    goto/16 :goto_6

    :pswitch_5
    const v2, 0x7f0800c3

    goto/16 :goto_6

    :cond_7
    const v2, 0x7f0800a1

    goto/16 :goto_6

    .line 8
    :cond_8
    iget-object v2, p0, Lxyz/aethersx2/android/InputBindingPreference;->R:Ljava/lang/String;

    const-string v5, "Up"

    .line 9
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const v2, 0x7f0800c7

    goto/16 :goto_6

    :cond_9
    const-string v5, "Right"

    .line 10
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const v2, 0x7f0800bf

    goto/16 :goto_6

    :cond_a
    const-string v5, "Down"

    .line 11
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const v2, 0x7f0800af

    goto/16 :goto_6

    :cond_b
    const-string v5, "Left"

    .line 12
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const v2, 0x7f0800b3

    goto/16 :goto_6

    :cond_c
    const-string v5, "Triangle"

    .line 13
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const v2, 0x7f0800c6

    goto/16 :goto_6

    :cond_d
    const-string v5, "Circle"

    .line 14
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const v2, 0x7f0800ad

    goto/16 :goto_6

    :cond_e
    const-string v5, "Cross"

    .line 15
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const v2, 0x7f0800ae

    goto/16 :goto_6

    :cond_f
    const-string v5, "Square"

    .line 16
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const v2, 0x7f0800c1

    goto/16 :goto_6

    :cond_10
    const-string v5, "Start"

    .line 17
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const v2, 0x7f0800c2

    goto/16 :goto_6

    :cond_11
    const-string v5, "Select"

    .line 18
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const v2, 0x7f0800c0

    goto/16 :goto_6

    :cond_12
    const-string v5, "L1"

    .line 19
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const v2, 0x7f0800b0

    goto/16 :goto_6

    :cond_13
    const-string v5, "L2"

    .line 20
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const v2, 0x7f0800b1

    goto/16 :goto_6

    :cond_14
    const-string v5, "R1"

    .line 21
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const v2, 0x7f0800bc

    goto/16 :goto_6

    :cond_15
    const-string v5, "R2"

    .line 22
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const v2, 0x7f0800bd

    goto/16 :goto_6

    :cond_16
    const-string v5, "L3"

    .line 23
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    const v2, 0x7f0800b2

    goto/16 :goto_6

    :cond_17
    const-string v5, "R3"

    .line 24
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const v2, 0x7f0800be

    goto/16 :goto_6

    :cond_18
    const-string v5, "LLeft"

    .line 25
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    const-string v5, "RLeft"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto/16 :goto_5

    :cond_19
    const-string v5, "LRight"

    .line 26
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    const-string v5, "RRight"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    goto/16 :goto_4

    :cond_1a
    const-string v5, "LUp"

    .line 27
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    const-string v5, "RUp"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_3

    :cond_1b
    const-string v5, "LDown"

    .line 28
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    const-string v5, "RDown"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    goto :goto_2

    :cond_1c
    const-string v5, "Pressure"

    .line 29
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const v2, 0x7f0800b9

    goto :goto_6

    :cond_1d
    const-string v5, "Macro1"

    .line 30
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const v2, 0x7f0800b4

    goto :goto_6

    :cond_1e
    const-string v5, "Macro2"

    .line 31
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const v2, 0x7f0800b5

    goto :goto_6

    :cond_1f
    const-string v5, "Macro3"

    .line 32
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    const v2, 0x7f0800b6

    goto :goto_6

    :cond_20
    const-string v5, "Macro4"

    .line 33
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const v2, 0x7f0800b7

    goto :goto_6

    :cond_21
    const v2, 0x7f080093

    goto :goto_6

    :cond_22
    :goto_2
    const v2, 0x7f08006f

    goto :goto_6

    :cond_23
    :goto_3
    const v2, 0x7f080072

    goto :goto_6

    :cond_24
    :goto_4
    const v2, 0x7f080087

    goto :goto_6

    :cond_25
    :goto_5
    const v2, 0x7f080086

    .line 34
    :goto_6
    iget-object v5, p0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    .line 35
    sget-object v6, La0/a;->a:Ljava/lang/Object;

    .line 36
    invoke-static {v5, v2}, La0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    iget-object v0, p0, Lxyz/aethersx2/android/InputBindingPreference;->S:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0}, Lxyz/aethersx2/android/InputBindingPreference;->d0()V

    .line 40
    iget v0, p0, Lxyz/aethersx2/android/InputBindingPreference;->W:I

    if-eq v0, v4, :cond_26

    if-eq v0, v3, :cond_26

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->c:Landroid/view/View;

    if-eqz p1, :cond_26

    .line 41
    new-instance v0, Lq3/d2;

    invoke-direct {v0, p0}, Lq3/d2;-><init>(Lxyz/aethersx2/android/InputBindingPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_26
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x45d1ec55 -> :sswitch_5
        -0x3b093fad -> :sswitch_4
        -0x3b064316 -> :sswitch_3
        0x33c150e2 -> :sswitch_2
        0x3c1416e2 -> :sswitch_1
        0x3c557f0a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final u()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lxyz/aethersx2/android/InputBindingPreference;->W:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v8, v0, Lxyz/aethersx2/android/InputBindingPreference;->T:Ljava/util/Set;

    if-eqz v8, :cond_0

    .line 6
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 7
    :goto_0
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v9

    array-length v10, v9

    const/4 v11, -0x1

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_8

    aget v13, v9, v12

    .line 8
    invoke-static {v13}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 9
    invoke-static {v13}, Lxyz/aethersx2/android/EmulationSurfaceView;->c(Landroid/view/InputDevice;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 10
    invoke-static {v13}, Lxyz/aethersx2/android/EmulationSurfaceView;->e(Landroid/view/InputDevice;)Z

    move-result v14

    if-nez v14, :cond_1

    goto/16 :goto_5

    .line 11
    :cond_1
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1f

    if-lt v14, v15, :cond_5

    .line 12
    invoke-virtual {v13}, Landroid/view/InputDevice;->getVibratorManager()Landroid/os/VibratorManager;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 13
    invoke-virtual {v14}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v15

    if-eqz v15, :cond_5

    .line 14
    array-length v2, v15

    const/4 v5, 0x0

    const/16 v17, 0x0

    :goto_2
    if-ge v5, v2, :cond_4

    aget v4, v15, v5

    .line 15
    invoke-virtual {v14, v4}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 16
    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v19

    if-eqz v19, :cond_3

    move/from16 v19, v2

    new-array v2, v3, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v13}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v20

    const/16 v18, 0x0

    aput-object v20, v2, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v16, 0x1

    aput-object v20, v2, v16

    const-string v3, "%s/Vibrator%d"

    invoke-static {v3, v2}, Lxyz/aethersx2/android/FileHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {v2}, Lxyz/aethersx2/android/InputBindingPreference;->b0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 21
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v14, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :cond_3
    move/from16 v19, v2

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v19

    const/4 v3, 0x2

    goto :goto_2

    :cond_4
    if-lez v17, :cond_5

    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_7

    .line 24
    invoke-virtual {v13}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 25
    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 26
    invoke-virtual {v13}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "%s/Vibrator0"

    invoke-static {v3, v4}, Lxyz/aethersx2/android/FileHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-static {v3}, Lxyz/aethersx2/android/InputBindingPreference;->b0(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 30
    :cond_6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {v13}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v4, 0x0

    :goto_6
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x2

    goto/16 :goto_1

    .line 33
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 34
    iget-object v1, v0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    const v2, 0x7f10003c

    const/4 v3, 0x1

    .line 35
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 36
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 37
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 38
    new-instance v3, Landroidx/appcompat/app/d$a;

    .line 39
    iget-object v4, v0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    .line 40
    invoke-direct {v3, v4}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const v4, 0x7f10019f

    .line 41
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/d$a;->j(I)Landroidx/appcompat/app/d$a;

    new-instance v4, Lq3/z0;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v1, v7, v5}, Lq3/z0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 42
    invoke-virtual {v3, v2, v11, v4}, Landroidx/appcompat/app/d$a;->i([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    const v1, 0x7f100084

    sget-object v2, Lq3/e;->p:Lq3/e;

    .line 43
    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/app/d$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    const v1, 0x7f100050

    new-instance v2, Lq3/b2;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Lq3/b2;-><init>(Lxyz/aethersx2/android/InputBindingPreference;I)V

    .line 44
    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/app/d$a;->f(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 45
    invoke-virtual {v3}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :goto_7
    return-void

    :cond_a
    const/4 v4, 0x0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->j()Lc1/e;

    move-result-object v1

    .line 48
    instance-of v2, v1, Lq3/a2;

    if-eqz v2, :cond_b

    move-object v2, v1

    check-cast v2, Lq3/a2;

    goto :goto_8

    :cond_b
    move-object v2, v4

    .line 49
    :goto_8
    new-instance v1, Lq3/c1;

    iget v3, v0, Lxyz/aethersx2/android/InputBindingPreference;->Y:I

    iget v4, v0, Lxyz/aethersx2/android/InputBindingPreference;->Z:I

    invoke-direct {v1, v3, v4, v2}, Lq3/c1;-><init>(IILq3/a2;)V

    .line 50
    iget-object v2, v0, Lxyz/aethersx2/android/InputBindingPreference;->a0:Landroidx/fragment/app/n;

    invoke-virtual {v2}, Landroidx/fragment/app/n;->getChildFragmentManager()Landroidx/fragment/app/y;

    move-result-object v2

    const-string v3, "EditMacroButtonFragment"

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/m;->show(Landroidx/fragment/app/y;Ljava/lang/String;)V

    .line 51
    new-instance v2, Lq3/c2;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lq3/c2;-><init>(Lxyz/aethersx2/android/InputBindingPreference;I)V

    .line 52
    iput-object v2, v1, Lq3/c1;->x0:Landroid/content/DialogInterface$OnDismissListener;

    return-void

    :cond_c
    const/4 v3, 0x1

    .line 53
    iget-object v1, v0, Lxyz/aethersx2/android/InputBindingPreference;->T:Ljava/util/Set;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-le v1, v3, :cond_d

    .line 54
    invoke-virtual/range {p0 .. p0}, Lxyz/aethersx2/android/InputBindingPreference;->c0()V

    return-void

    .line 55
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->j()Lc1/e;

    move-result-object v1

    .line 56
    instance-of v2, v1, Lq3/a2;

    if-eqz v2, :cond_e

    move-object v2, v1

    check-cast v2, Lq3/a2;

    move-object v5, v2

    goto :goto_9

    :cond_e
    move-object v5, v4

    .line 57
    :goto_9
    new-instance v1, Lq3/t;

    .line 58
    iget-object v4, v0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    .line 59
    iget-object v6, v0, Lxyz/aethersx2/android/InputBindingPreference;->S:Ljava/lang/String;

    .line 60
    iget-object v7, v0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    const/4 v8, 0x0

    .line 61
    iget-object v9, v0, Lxyz/aethersx2/android/InputBindingPreference;->U:Ljava/lang/String;

    iget v10, v0, Lxyz/aethersx2/android/InputBindingPreference;->W:I

    const/4 v11, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lq3/t;-><init>(Landroid/content/Context;Lq3/a2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 62
    new-instance v2, Lq3/c2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lq3/c2;-><init>(Lxyz/aethersx2/android/InputBindingPreference;I)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 63
    invoke-virtual {v1}, Lq3/t;->show()V

    return-void
.end method
