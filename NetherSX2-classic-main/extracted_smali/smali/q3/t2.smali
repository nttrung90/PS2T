.class public final synthetic Lq3/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lxyz/aethersx2/android/k;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/k;I)V
    .locals 0

    iput p2, p0, Lq3/t2;->a:I

    iput-object p1, p0, Lq3/t2;->b:Lxyz/aethersx2/android/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4

    iget p1, p0, Lq3/t2;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lq3/t2;->b:Lxyz/aethersx2/android/k;

    .line 1
    iget-object v0, p1, Lxyz/aethersx2/android/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lxyz/aethersx2/android/TouchscreenControllerButtonView;

    .line 2
    invoke-virtual {p2, p3}, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->setToggle(Z)V

    .line 3
    invoke-virtual {p2}, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->getConfigName()Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object v0, p1, Lxyz/aethersx2/android/k;->c:Lxyz/aethersx2/android/EmulationActivity;

    .line 5
    iget-object v0, v0, Lxyz/aethersx2/android/EmulationActivity;->B:Lq3/a2;

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p1, Lxyz/aethersx2/android/k;->g:Ljava/lang/String;

    invoke-static {p1, p2}, Lxyz/aethersx2/android/k;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lq3/a2;->f(Ljava/lang/String;Z)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9
    iget-object p1, p1, Lxyz/aethersx2/android/k;->g:Ljava/lang/String;

    invoke-static {p1, p2}, Lxyz/aethersx2/android/k;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void

    .line 11
    :goto_1
    iget-object p1, p0, Lq3/t2;->b:Lxyz/aethersx2/android/k;

    .line 12
    iget-object v0, p1, Lxyz/aethersx2/android/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge p2, v0, :cond_2

    .line 13
    iget-object v0, p1, Lxyz/aethersx2/android/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lxyz/aethersx2/android/TouchscreenControllerButtonView;

    if-eqz p3, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    .line 14
    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-virtual {p2}, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->getConfigName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lxyz/aethersx2/android/k;->z(Ljava/lang/String;Z)V

    goto :goto_5

    .line 16
    :cond_2
    iget-object v0, p1, Lxyz/aethersx2/android/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v0, p2, v0

    iget-object v3, p1, Lxyz/aethersx2/android/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 17
    iget-object v0, p1, Lxyz/aethersx2/android/k;->j:Ljava/util/ArrayList;

    iget-object v3, p1, Lxyz/aethersx2/android/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr p2, v3

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lxyz/aethersx2/android/TouchscreenControllerAxisView;

    if-eqz p3, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 18
    :goto_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-virtual {p2}, Lxyz/aethersx2/android/TouchscreenControllerAxisView;->getConfigName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lxyz/aethersx2/android/k;->z(Ljava/lang/String;Z)V

    goto :goto_5

    .line 20
    :cond_4
    iget-object p2, p1, Lxyz/aethersx2/android/k;->k:Lxyz/aethersx2/android/TouchscreenControllerDPadView;

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    .line 21
    :goto_4
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p2, p1, Lxyz/aethersx2/android/k;->k:Lxyz/aethersx2/android/TouchscreenControllerDPadView;

    invoke-virtual {p2}, Lxyz/aethersx2/android/TouchscreenControllerDPadView;->getConfigName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lxyz/aethersx2/android/k;->z(Ljava/lang/String;Z)V

    :cond_6
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
