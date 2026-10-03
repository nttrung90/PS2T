.class public final synthetic Lq3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lq3/a;->c:I

    iput-object p1, p0, Lq3/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lq3/a;->c:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Lq3/a;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/k;

    sget-object v0, Lxyz/aethersx2/android/k;->C:[Ljava/lang/String;

    .line 1
    new-instance v0, Landroidx/appcompat/app/d$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lq3/d;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v2}, Lq3/d;-><init>(Ljava/lang/Object;I)V

    .line 3
    iget-object p1, v0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v2, p1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p1, Landroidx/appcompat/app/AlertController$b;->p:[Ljava/lang/CharSequence;

    .line 4
    iget-object p1, v0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, p1, Landroidx/appcompat/app/AlertController$b;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 6
    :pswitch_1
    iget-object p1, p0, Lq3/a;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/SetupWizardActivity;

    .line 7
    iget-object v0, p1, Lxyz/aethersx2/android/SetupWizardActivity;->z:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p1, Lxyz/aethersx2/android/SetupWizardActivity;->z:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 10
    invoke-virtual {p1}, Lxyz/aethersx2/android/SetupWizardActivity;->A()V

    :goto_0
    return-void

    .line 11
    :pswitch_2
    iget-object p1, p0, Lq3/a;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/h;

    sget v0, Lxyz/aethersx2/android/h;->A0:I

    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/m;->dismiss()V

    .line 13
    iget-object v0, p1, Lxyz/aethersx2/android/h;->y0:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p1}, Landroidx/fragment/app/m;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_1
    return-void

    .line 15
    :pswitch_3
    iget-object p1, p0, Lq3/a;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/FloatSpinBoxPreference;

    .line 16
    iget-object v1, p1, Lxyz/aethersx2/android/FloatSpinBoxPreference;->Z:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    iget v0, p1, Lxyz/aethersx2/android/FloatSpinBoxPreference;->U:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p1, Lxyz/aethersx2/android/FloatSpinBoxPreference;->c0:Ljava/lang/Float;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->D(F)Z

    goto :goto_1

    .line 19
    :cond_2
    iput-object v0, p1, Lxyz/aethersx2/android/FloatSpinBoxPreference;->c0:Ljava/lang/Float;

    .line 20
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->F(Ljava/lang/String;)Z

    .line 21
    :goto_1
    invoke-virtual {p1}, Lxyz/aethersx2/android/FloatSpinBoxPreference;->W()V

    return-void

    .line 22
    :pswitch_4
    iget-object p1, p0, Lq3/a;->d:Ljava/lang/Object;

    check-cast p1, Lq3/y0;

    sget v0, Lq3/y0;->u0:I

    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/m;->dismiss()V

    return-void

    .line 24
    :pswitch_5
    iget-object p1, p0, Lq3/a;->d:Ljava/lang/Object;

    check-cast p1, Lq3/g$a;

    sget v0, Lq3/g$a;->t0:I

    .line 25
    invoke-virtual {p1}, Landroidx/fragment/app/m;->dismiss()V

    return-void

    .line 26
    :pswitch_6
    iget-object p1, p0, Lq3/a;->d:Ljava/lang/Object;

    check-cast p1, Lq3/c;

    .line 27
    invoke-virtual {p1}, Landroidx/fragment/app/m;->dismiss()V

    return-void

    .line 28
    :goto_2
    iget-object p1, p0, Lq3/a;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/TriStatePreference;

    .line 29
    invoke-virtual {p1, v0}, Lxyz/aethersx2/android/TriStatePreference;->W(Ljava/lang/Boolean;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
