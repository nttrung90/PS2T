.class public Lxyz/aethersx2/android/MemoryCardNamePreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyz/aethersx2/android/MemoryCardNamePreference$a;
    }
.end annotation


# instance fields
.field public R:I

.field public S:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lxyz/aethersx2/android/MemoryCardNamePreference;->R:I

    .line 3
    iput-boolean p1, p0, Lxyz/aethersx2/android/MemoryCardNamePreference;->S:Z

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()V

    .line 5
    new-instance v0, Lxyz/aethersx2/android/MemoryCardNamePreference$a;

    invoke-direct {v0}, Lxyz/aethersx2/android/MemoryCardNamePreference$a;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->O(Landroidx/preference/Preference$g;)V

    .line 6
    invoke-virtual {p0, p1}, Lxyz/aethersx2/android/MemoryCardNamePreference;->Z(I)V

    return-void
.end method

.method public static final W(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "MemoryCards/Slot%d_Filename"

    invoke-static {p0, v0}, Lxyz/aethersx2/android/FileHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final X()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->j()Lc1/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v2, v1}, Lc1/e;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v2, p0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 6
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final Y(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->j()Lc1/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1, p1}, Lc1/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->o()V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 8
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 9
    invoke-virtual {p0}, Landroidx/preference/Preference;->o()V

    :cond_1
    return-void
.end method

.method public final Z(I)V
    .locals 0

    .line 1
    iput p1, p0, Lxyz/aethersx2/android/MemoryCardNamePreference;->R:I

    .line 2
    invoke-static {p1}, Lxyz/aethersx2/android/MemoryCardNamePreference;->W(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->K(Ljava/lang/String;)V

    return-void
.end method

.method public final t(Lc1/h;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->t(Lc1/h;)V

    return-void
.end method

.method public final u()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1
    invoke-static {v1}, Lxyz/aethersx2/android/NativeLibrary;->getAvailableMemoryCards(Z)[Lxyz/aethersx2/android/MemoryCardInfo;

    move-result-object v2

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lxyz/aethersx2/android/MemoryCardNamePreference;->X()Ljava/lang/String;

    move-result-object v5

    .line 5
    iget-boolean v6, v0, Lxyz/aethersx2/android/MemoryCardNamePreference;->S:Z

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eqz v6, :cond_1

    if-nez v5, :cond_0

    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v8, v6

    .line 7
    :cond_0
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v6, v0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    const v9, 0x7f1000d7

    .line 9
    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-gez v8, :cond_2

    .line 10
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    :cond_2
    const-string v6, ""

    .line 12
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v6, v0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    const v9, 0x7f100131

    .line 14
    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x2

    if-eqz v2, :cond_b

    .line 15
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 16
    array-length v10, v2

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_b

    aget-object v12, v2, v11

    .line 17
    invoke-virtual {v12}, Lxyz/aethersx2/android/MemoryCardInfo;->getName()Ljava/lang/String;

    move-result-object v13

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->j()Lc1/e;

    move-result-object v14

    if-eqz v14, :cond_5

    move v15, v1

    :goto_1
    if-gt v15, v6, :cond_5

    .line 19
    iget v9, v0, Lxyz/aethersx2/android/MemoryCardNamePreference;->R:I

    if-ne v15, v9, :cond_3

    goto :goto_3

    .line 20
    :cond_3
    invoke-static {v15}, Lxyz/aethersx2/android/MemoryCardNamePreference;->W(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9, v7}, Lc1/e;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    :goto_2
    move v9, v1

    goto :goto_6

    :cond_4
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 21
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->k()Landroid/content/SharedPreferences;

    move-result-object v9

    if-eqz v9, :cond_8

    move v14, v1

    :goto_4
    if-gt v14, v6, :cond_8

    .line 22
    iget v15, v0, Lxyz/aethersx2/android/MemoryCardNamePreference;->R:I

    if-ne v14, v15, :cond_6

    goto :goto_5

    .line 23
    :cond_6
    invoke-static {v14}, Lxyz/aethersx2/android/MemoryCardNamePreference;->W(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v15, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    goto :goto_2

    :cond_7
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_9

    goto :goto_7

    .line 24
    :cond_9
    invoke-virtual {v12}, Lxyz/aethersx2/android/MemoryCardInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 26
    :cond_a
    invoke-virtual {v12}, Lxyz/aethersx2/android/MemoryCardInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v9, v0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    .line 28
    invoke-virtual {v12, v9}, Lxyz/aethersx2/android/MemoryCardInfo;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 29
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 30
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 31
    new-instance v4, Landroidx/appcompat/app/d$a;

    .line 32
    iget-object v5, v0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    .line 33
    invoke-direct {v4, v5}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    .line 34
    iget-object v5, v0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    const v7, 0x7f10013b

    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    iget v9, v0, Lxyz/aethersx2/android/MemoryCardNamePreference;->R:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v1, v10

    invoke-virtual {v5, v7, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 36
    iget-object v5, v4, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, v5, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    .line 37
    new-instance v1, Lq3/q;

    invoke-direct {v1, v0, v3, v6}, Lq3/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v2, v8, v1}, Landroidx/appcompat/app/d$a;->i([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 38
    invoke-virtual {v4}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    .line 39
    invoke-virtual {v4}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method
