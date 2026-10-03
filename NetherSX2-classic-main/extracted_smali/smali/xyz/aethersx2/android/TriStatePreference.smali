.class public Lxyz/aethersx2/android/TriStatePreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field public R:Landroid/widget/ImageButton;

.field public S:Landroid/widget/ImageButton;

.field public T:Landroid/widget/ImageButton;

.field public U:Ljava/lang/Boolean;

.field public V:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lxyz/aethersx2/android/TriStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040179

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lxyz/aethersx2/android/TriStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Lxyz/aethersx2/android/TriStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lxyz/aethersx2/android/TriStatePreference;->U:Ljava/lang/Boolean;

    .line 3
    iput-object p1, p0, Lxyz/aethersx2/android/TriStatePreference;->V:Ljava/lang/Boolean;

    const p1, 0x7f0c005e

    .line 4
    iput p1, p0, Landroidx/preference/Preference;->J:I

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)V
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lxyz/aethersx2/android/TriStatePreference;->U:Ljava/lang/Boolean;

    .line 2
    iput-object v1, p0, Lxyz/aethersx2/android/TriStatePreference;->V:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->T()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->j()Lc1/e;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v2, v1}, Lc1/e;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v1, v0}, Lc1/e;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lxyz/aethersx2/android/TriStatePreference;->V:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9
    :catch_0
    :try_start_1
    iget-object v1, p0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v1, v0}, Lc1/e;->a(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lxyz/aethersx2/android/TriStatePreference;->V:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 11
    :catch_1
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lxyz/aethersx2/android/TriStatePreference;->X()V

    return-void
.end method

.method public final W(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxyz/aethersx2/android/TriStatePreference;->V:Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->F(Ljava/lang/String;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->C(Z)Z

    .line 4
    :goto_0
    invoke-virtual {p0}, Lxyz/aethersx2/android/TriStatePreference;->X()V

    return-void
.end method

.method public final X()V
    .locals 4

    .line 1
    iget-object v0, p0, Lxyz/aethersx2/android/TriStatePreference;->R:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v3, p0, Lxyz/aethersx2/android/TriStatePreference;->V:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 3
    :cond_1
    iget-object v0, p0, Lxyz/aethersx2/android/TriStatePreference;->S:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 4
    iget-object v3, p0, Lxyz/aethersx2/android/TriStatePreference;->V:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 5
    :cond_3
    iget-object v0, p0, Lxyz/aethersx2/android/TriStatePreference;->T:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    .line 6
    iget-object v3, p0, Lxyz/aethersx2/android/TriStatePreference;->V:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    return-void
.end method

.method public final t(Lc1/h;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->t(Lc1/h;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0900e6

    .line 3
    invoke-virtual {p1, v0}, Lc1/h;->x(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lxyz/aethersx2/android/TriStatePreference;->R:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 4
    new-instance v2, Lq3/x2;

    invoke-direct {v2, p0, v1}, Lq3/x2;-><init>(Lxyz/aethersx2/android/TriStatePreference;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lxyz/aethersx2/android/TriStatePreference;->R:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    const v0, 0x7f090282

    .line 6
    invoke-virtual {p1, v0}, Lc1/h;->x(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lxyz/aethersx2/android/TriStatePreference;->S:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 7
    new-instance v1, Lq3/a;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lq3/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lxyz/aethersx2/android/TriStatePreference;->S:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    const v0, 0x7f090101

    .line 9
    invoke-virtual {p1, v0}, Lc1/h;->x(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lxyz/aethersx2/android/TriStatePreference;->T:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    .line 10
    new-instance v0, Lq3/x2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lq3/x2;-><init>(Lxyz/aethersx2/android/TriStatePreference;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p0, Lxyz/aethersx2/android/TriStatePreference;->T:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    :cond_2
    invoke-virtual {p0}, Lxyz/aethersx2/android/TriStatePreference;->X()V

    return-void
.end method

.method public final v(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/preference/Preference;->v(Landroidx/preference/Preference;Z)V

    .line 2
    iget-object p1, p0, Lxyz/aethersx2/android/TriStatePreference;->R:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lxyz/aethersx2/android/TriStatePreference;->S:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    :cond_1
    iget-object p1, p0, Lxyz/aethersx2/android/TriStatePreference;->T:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public final x(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lxyz/aethersx2/android/TriStatePreference;->U:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lxyz/aethersx2/android/TriStatePreference;->U:Ljava/lang/Boolean;

    .line 5
    :goto_1
    iget-object p1, p0, Lxyz/aethersx2/android/TriStatePreference;->U:Ljava/lang/Boolean;

    return-object p1
.end method
