.class public final synthetic Lq3/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lxyz/aethersx2/android/b;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/b;I)V
    .locals 0

    iput p2, p0, Lq3/w;->c:I

    iput-object p1, p0, Lq3/w;->d:Lxyz/aethersx2/android/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lq3/w;->c:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, Lq3/w;->d:Lxyz/aethersx2/android/b;

    sget-object v3, Lxyz/aethersx2/android/b;->o0:[C

    .line 1
    invoke-virtual {v1, v2}, Lxyz/aethersx2/android/b;->y(Z)V

    return-void

    .line 2
    :pswitch_1
    iget-object v1, v0, Lq3/w;->d:Lxyz/aethersx2/android/b;

    .line 3
    iget-object v3, v1, Lxyz/aethersx2/android/b;->e0:Lxyz/aethersx2/android/k;

    invoke-virtual {v3}, Lxyz/aethersx2/android/k;->y()V

    .line 4
    invoke-virtual {v1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1002e8

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 5
    :goto_0
    iget-object v1, v0, Lq3/w;->d:Lxyz/aethersx2/android/b;

    sget-object v3, Lxyz/aethersx2/android/b;->o0:[C

    .line 6
    invoke-virtual {v1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    sget-object v4, Lxyz/aethersx2/android/k;->C:[Ljava/lang/String;

    .line 7
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/16 v4, 0x4b

    const-string v5, "TouchscreenController/Opacity"

    .line 8
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v4, 0x0

    const-string v5, "TouchscreenController/AutoHideTime"

    .line 9
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v5, "TouchscreenController/PortIndex"

    const-string v6, "0"

    .line 10
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "TouchscreenController/View"

    const-string v6, "analog_stick"

    .line 11
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "TouchscreenController/AutoHide"

    .line 12
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v5, "TouchscreenController/TouchGliding"

    .line 13
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v5, "TouchscreenController/HapticFeedback"

    .line 14
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v5, "TouchscreenController/BindToRightStick"

    .line 15
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 16
    sget-object v5, Lxyz/aethersx2/android/k;->D:[Ljava/lang/String;

    move v6, v4

    :goto_1
    const/4 v7, 0x4

    if-ge v6, v7, :cond_3

    aget-object v7, v5, v6

    .line 17
    sget-object v8, Lxyz/aethersx2/android/k;->C:[Ljava/lang/String;

    move v9, v4

    :goto_2
    const/4 v10, 0x2

    const/16 v11, 0x1b

    if-ge v9, v10, :cond_1

    aget-object v10, v8, v9

    .line 18
    sget-object v12, Lxyz/aethersx2/android/k;->E:[Ljava/lang/String;

    move v13, v4

    :goto_3
    if-ge v13, v11, :cond_0

    aget-object v14, v12, v13

    .line 19
    invoke-static {v7, v14, v10}, Lxyz/aethersx2/android/k;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14}, Lxyz/aethersx2/android/k;->f(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v3, v15, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 20
    invoke-static {v7, v14, v10}, Lxyz/aethersx2/android/k;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x0

    invoke-interface {v3, v2, v15}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 21
    invoke-static {v7, v14, v10}, Lxyz/aethersx2/android/k;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v15}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 22
    invoke-static {v7, v14, v10}, Lxyz/aethersx2/android/k;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-interface {v3, v2, v14}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x1

    goto :goto_2

    .line 23
    :cond_1
    sget-object v2, Lxyz/aethersx2/android/k;->E:[Ljava/lang/String;

    move v8, v4

    :goto_4
    if-ge v8, v11, :cond_2

    aget-object v9, v2, v8

    .line 24
    invoke-static {v7, v9}, Lxyz/aethersx2/android/k;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x1

    goto :goto_1

    .line 25
    :cond_3
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->setDefaultPadSettings()V

    .line 27
    invoke-virtual {v1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100061

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
