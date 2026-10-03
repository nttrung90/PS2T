.class public final synthetic Lq3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lq3/d;->c:I

    iput-object p1, p0, Lq3/d;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget v0, p0, Lq3/d;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lq3/d;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/ListPreference;

    sget v1, Lxyz/aethersx2/android/f$a;->l0:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 1
    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->a0(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Landroidx/preference/ListPreference;->Y:[Ljava/lang/CharSequence;

    add-int/lit8 p2, p2, -0x1

    .line 3
    aget-object p2, v1, p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->a0(Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .line 5
    :pswitch_1
    iget-object p1, p0, Lq3/d;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/FileEditorActivity;

    sget p2, Lxyz/aethersx2/android/FileEditorActivity;->B:I

    .line 6
    invoke-virtual {p1}, Lxyz/aethersx2/android/FileEditorActivity;->A()V

    return-void

    .line 7
    :pswitch_2
    iget-object p2, p0, Lq3/d;->d:Ljava/lang/Object;

    check-cast p2, Lxyz/aethersx2/android/b$j;

    sget-object v0, Lxyz/aethersx2/android/b$j;->t0:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 9
    iget-object p1, p2, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    invoke-virtual {p1}, Lxyz/aethersx2/android/b;->G()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p2, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 11
    iget-object p1, p1, Lxyz/aethersx2/android/b;->f0:Lq3/a2;

    .line 12
    invoke-virtual {p1}, Lq3/a2;->s()V

    .line 13
    iget-object v0, p2, Lxyz/aethersx2/android/b$j;->o0:Landroidx/preference/PreferenceCategory;

    invoke-static {p1, v0}, Lxyz/aethersx2/android/b$j;->F(Lq3/a2;Landroidx/preference/PreferenceCategory;)V

    .line 14
    iget-object v0, p2, Lxyz/aethersx2/android/b$j;->p0:Landroidx/preference/PreferenceCategory;

    invoke-static {p1, v0}, Lxyz/aethersx2/android/b$j;->F(Lq3/a2;Landroidx/preference/PreferenceCategory;)V

    .line 15
    invoke-virtual {p1}, Lq3/a2;->l()V

    goto :goto_1

    .line 16
    :cond_1
    iget-object p1, p2, Landroidx/preference/b;->d0:Landroidx/preference/PreferenceManager;

    .line 17
    invoke-virtual {p1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 18
    iget-object v0, p2, Lxyz/aethersx2/android/b$j;->o0:Landroidx/preference/PreferenceCategory;

    invoke-static {p1, v0}, Lxyz/aethersx2/android/b$j;->E(Landroid/content/SharedPreferences$Editor;Landroidx/preference/PreferenceCategory;)V

    .line 19
    iget-object v0, p2, Lxyz/aethersx2/android/b$j;->p0:Landroidx/preference/PreferenceCategory;

    invoke-static {p1, v0}, Lxyz/aethersx2/android/b$j;->E(Landroid/content/SharedPreferences$Editor;Landroidx/preference/PreferenceCategory;)V

    .line 20
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 21
    :goto_1
    iget-object p1, p2, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p2, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    const v3, 0x7f10005f

    new-array v4, v1, [Ljava/lang/Object;

    iget p2, p2, Lxyz/aethersx2/android/b$j;->m0:I

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v2

    .line 23
    invoke-virtual {v0, v3, v4}, Landroidx/fragment/app/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 25
    :pswitch_3
    iget-object p1, p0, Lq3/d;->d:Ljava/lang/Object;

    check-cast p1, Lq3/t;

    sget p2, Lq3/t;->m:I

    .line 26
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 27
    :pswitch_4
    iget-object p2, p0, Lq3/d;->d:Ljava/lang/Object;

    check-cast p2, Lxyz/aethersx2/android/AndroidProgressCallback$a;

    .line 28
    iput-boolean v2, p2, Lxyz/aethersx2/android/AndroidProgressCallback$a;->a:Z

    .line 29
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .line 30
    :pswitch_5
    iget-object p1, p0, Lq3/d;->d:Ljava/lang/Object;

    check-cast p1, Lq3/g;

    sget p2, Lq3/g;->n0:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->cheevosLogout()V

    .line 32
    invoke-virtual {p1}, Lq3/g;->C()V

    return-void

    .line 33
    :goto_2
    iget-object p1, p0, Lq3/d;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/k;

    sget-object v0, Lxyz/aethersx2/android/k;->C:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_7

    if-eq p2, v1, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    goto :goto_3

    .line 34
    :cond_2
    invoke-virtual {p1}, Lxyz/aethersx2/android/k;->e()V

    goto :goto_3

    .line 35
    :cond_3
    invoke-virtual {p1}, Lxyz/aethersx2/android/k;->y()V

    goto :goto_3

    .line 36
    :cond_4
    iput v0, p1, Lxyz/aethersx2/android/k;->n:I

    goto :goto_3

    .line 37
    :cond_5
    iput v0, p1, Lxyz/aethersx2/android/k;->n:I

    goto :goto_3

    .line 38
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lxyz/aethersx2/android/k;->c(Landroid/content/Context;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_3

    .line 40
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 41
    new-instance v0, Landroid/widget/SeekBar;

    invoke-direct {v0, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x64

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 43
    iget v1, p1, Lxyz/aethersx2/android/k;->u:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 44
    new-instance v1, Lq3/w2;

    invoke-direct {v1, p1}, Lq3/w2;-><init>(Lxyz/aethersx2/android/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 45
    new-instance p1, Landroidx/appcompat/app/d$a;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const p2, 0x7f10008a

    .line 46
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/d$a;->j(I)Landroidx/appcompat/app/d$a;

    .line 47
    iget-object p2, p1, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, p2, Landroidx/appcompat/app/AlertController$b;->s:Landroid/view/View;

    .line 48
    sget-object p2, Lq3/e;->w:Lq3/e;

    const v0, 0x7f100086

    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/d$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 49
    invoke-virtual {p1}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_3
    return-void

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
