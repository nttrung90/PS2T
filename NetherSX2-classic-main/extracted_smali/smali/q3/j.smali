.class public final synthetic Lq3/j;
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

    iput p2, p0, Lq3/j;->c:I

    iput-object p1, p0, Lq3/j;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget p2, p0, Lq3/j;->c:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lq3/j;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/FileEditorActivity;

    sget p2, Lxyz/aethersx2/android/FileEditorActivity;->B:I

    .line 1
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 3
    :pswitch_1
    iget-object p2, p0, Lq3/j;->d:Ljava/lang/Object;

    check-cast p2, Lxyz/aethersx2/android/b$a;

    sget v2, Lxyz/aethersx2/android/b$a;->t0:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5
    iget-object p1, p2, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    invoke-virtual {p1}, Lxyz/aethersx2/android/b;->G()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p2, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 7
    iget-object p1, p1, Lxyz/aethersx2/android/b;->f0:Lq3/a2;

    .line 8
    invoke-virtual {p1}, Lq3/a2;->s()V

    .line 9
    iget-object v2, p2, Lxyz/aethersx2/android/b$a;->p0:Landroidx/preference/PreferenceCategory;

    invoke-static {p1, v2}, Lxyz/aethersx2/android/b$a;->F(Lq3/a2;Landroidx/preference/PreferenceCategory;)V

    .line 10
    iget-object v2, p2, Lxyz/aethersx2/android/b$a;->r0:Landroidx/preference/PreferenceCategory;

    invoke-static {p1, v2}, Lxyz/aethersx2/android/b$a;->F(Lq3/a2;Landroidx/preference/PreferenceCategory;)V

    .line 11
    iget-object v2, p2, Lxyz/aethersx2/android/b$a;->q0:Landroidx/preference/PreferenceCategory;

    invoke-static {p1, v2}, Lxyz/aethersx2/android/b$a;->F(Lq3/a2;Landroidx/preference/PreferenceCategory;)V

    .line 12
    invoke-virtual {p1}, Lq3/a2;->l()V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p2, Landroidx/preference/b;->d0:Landroidx/preference/PreferenceManager;

    .line 14
    invoke-virtual {p1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 15
    iget-object v2, p2, Lxyz/aethersx2/android/b$a;->p0:Landroidx/preference/PreferenceCategory;

    invoke-static {p1, v2}, Lxyz/aethersx2/android/b$a;->E(Landroid/content/SharedPreferences$Editor;Landroidx/preference/PreferenceCategory;)V

    .line 16
    iget-object v2, p2, Lxyz/aethersx2/android/b$a;->r0:Landroidx/preference/PreferenceCategory;

    invoke-static {p1, v2}, Lxyz/aethersx2/android/b$a;->E(Landroid/content/SharedPreferences$Editor;Landroidx/preference/PreferenceCategory;)V

    .line 17
    iget-object v2, p2, Lxyz/aethersx2/android/b$a;->q0:Landroidx/preference/PreferenceCategory;

    invoke-static {p1, v2}, Lxyz/aethersx2/android/b$a;->E(Landroid/content/SharedPreferences$Editor;Landroidx/preference/PreferenceCategory;)V

    .line 18
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 19
    :goto_0
    iget-object p1, p2, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p2, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    const v3, 0x7f10005e

    new-array v4, v1, [Ljava/lang/Object;

    iget p2, p2, Lxyz/aethersx2/android/b$a;->m0:I

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v0

    .line 21
    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 23
    :pswitch_2
    iget-object p2, p0, Lq3/j;->d:Ljava/lang/Object;

    check-cast p2, Lxyz/aethersx2/android/AndroidProgressCallback$a;

    .line 24
    iput-boolean v1, p2, Lxyz/aethersx2/android/AndroidProgressCallback$a;->a:Z

    .line 25
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .line 26
    :goto_1
    iget-object p1, p0, Lq3/j;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/h$c;

    .line 27
    iget-object p2, p1, Lxyz/aethersx2/android/h$c;->A:Lxyz/aethersx2/android/i;

    iget-object v0, p1, Lxyz/aethersx2/android/h$c;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lxyz/aethersx2/android/i;->a(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 28
    iget-object p1, p1, Lxyz/aethersx2/android/h$c;->v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f10019c

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 29
    :cond_1
    iget-object p2, p1, Lxyz/aethersx2/android/h$c;->A:Lxyz/aethersx2/android/i;

    iget-object v0, p1, Lxyz/aethersx2/android/h$c;->w:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lxyz/aethersx2/android/i;->e(Landroid/widget/ImageView;Landroid/util/LruCache;)V

    .line 30
    iget-object p2, p1, Lxyz/aethersx2/android/h$c;->x:Landroid/widget/TextView;

    iget-object v0, p1, Lxyz/aethersx2/android/h$c;->A:Lxyz/aethersx2/android/i;

    .line 31
    iget-object v0, v0, Lxyz/aethersx2/android/i;->d:Ljava/lang/String;

    .line 32
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p2, p1, Lxyz/aethersx2/android/h$c;->y:Landroid/widget/TextView;

    iget-object p1, p1, Lxyz/aethersx2/android/h$c;->A:Lxyz/aethersx2/android/i;

    .line 34
    iget-object p1, p1, Lxyz/aethersx2/android/i;->f:Ljava/lang/String;

    .line 35
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
