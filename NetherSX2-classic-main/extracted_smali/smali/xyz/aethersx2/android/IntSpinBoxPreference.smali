.class public Lxyz/aethersx2/android/IntSpinBoxPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyz/aethersx2/android/IntSpinBoxPreference$a;
    }
.end annotation


# instance fields
.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:Z

.field public W:Ljava/lang/String;

.field public X:Landroid/widget/TextView;

.field public Y:Landroid/widget/CheckBox;

.field public Z:Landroid/widget/ImageButton;

.field public a0:Landroid/widget/ImageButton;

.field public b0:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lxyz/aethersx2/android/IntSpinBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040179

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lxyz/aethersx2/android/IntSpinBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, p3, v0}, Lxyz/aethersx2/android/IntSpinBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->R:I

    const/16 v1, 0x64

    .line 3
    iput v1, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->S:I

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->T:I

    .line 5
    iput v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->U:I

    .line 6
    iput-boolean v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->V:Z

    const-string v2, "%d"

    .line 7
    iput-object v2, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->W:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->b0:Ljava/lang/Integer;

    const v2, 0x7f0c0054

    .line 9
    iput v2, p0, Landroidx/preference/Preference;->J:I

    .line 10
    sget-object v2, Ln2/e;->W:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 11
    iget p3, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->R:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->R:I

    const/4 p2, 0x2

    .line 12
    iget p3, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->S:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->S:I

    .line 13
    iget p2, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->T:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->T:I

    const/4 p2, 0x4

    .line 14
    iget-boolean p3, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->V:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->V:Z

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 16
    iput-object p2, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->W:Ljava/lang/String;

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)V
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->U:I

    :goto_0
    iput v1, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->U:I

    .line 2
    iget-boolean v2, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->V:Z

    if-eqz v2, :cond_5

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->T()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 4
    iput-object v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->b0:Ljava/lang/Integer;

    return-void

    .line 5
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->j()Lc1/e;

    move-result-object p1

    const/high16 v1, -0x80000000

    if-eqz p1, :cond_3

    .line 6
    iget-object v2, p0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v2, v1}, Lc1/e;->c(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_2

    move-object p1, v0

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->b0:Ljava/lang/Integer;

    goto :goto_3

    .line 9
    :cond_3
    iget-object p1, p0, Landroidx/preference/Preference;->d:Landroidx/preference/PreferenceManager;

    .line 10
    invoke-virtual {p1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 11
    iget-object v2, p0, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 12
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_4

    move-object p1, v0

    goto :goto_2

    .line 13
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->b0:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    iput-object v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->b0:Ljava/lang/Integer;

    :goto_3
    return-void

    :cond_5
    if-eqz v0, :cond_6

    .line 16
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 17
    :cond_6
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->g(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->b0:Ljava/lang/Integer;

    return-void
.end method

.method public final W()V
    .locals 5

    .line 1
    iget-object v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->b0:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->X:Landroid/widget/TextView;

    iget-object v3, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->W:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->Z:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->a0:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->X:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->X:Landroid/widget/TextView;

    const v2, 0x7f1000d8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->Z:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 8
    iget-object v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->a0:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    iget-object v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->X:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public final t(Lc1/h;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->t(Lc1/h;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f09008a

    .line 3
    invoke-virtual {p1, v0}, Lc1/h;->x(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->Y:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4
    iget-boolean v3, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->V:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->b0:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 6
    iget-object v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->Y:Landroid/widget/CheckBox;

    new-instance v1, Lq3/f;

    invoke-direct {v1, p0, v4}, Lq3/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->Y:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    const v0, 0x7f09014f

    .line 9
    invoke-virtual {p1, v0}, Lc1/h;->x(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->Z:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 10
    new-instance v1, Lxyz/aethersx2/android/IntSpinBoxPreference$a;

    invoke-direct {v1, p0, v2}, Lxyz/aethersx2/android/IntSpinBoxPreference$a;-><init>(Lxyz/aethersx2/android/IntSpinBoxPreference;I)V

    .line 11
    new-instance v2, Lxyz/aethersx2/android/g;

    invoke-direct {v2, v1, v1, v1}, Lxyz/aethersx2/android/g;-><init>(Lxyz/aethersx2/android/g$c;Lxyz/aethersx2/android/g$b;Lxyz/aethersx2/android/g$d;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    iget-object v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->Z:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    const v0, 0x7f0900d7

    .line 13
    invoke-virtual {p1, v0}, Lc1/h;->x(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->a0:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 14
    new-instance v1, Lxyz/aethersx2/android/IntSpinBoxPreference$a;

    const/4 v2, -0x1

    invoke-direct {v1, p0, v2}, Lxyz/aethersx2/android/IntSpinBoxPreference$a;-><init>(Lxyz/aethersx2/android/IntSpinBoxPreference;I)V

    .line 15
    new-instance v2, Lxyz/aethersx2/android/g;

    invoke-direct {v2, v1, v1, v1}, Lxyz/aethersx2/android/g;-><init>(Lxyz/aethersx2/android/g$c;Lxyz/aethersx2/android/g$b;Lxyz/aethersx2/android/g$d;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 16
    iget-object v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->a0:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    const v0, 0x7f090287

    .line 17
    invoke-virtual {p1, v0}, Lc1/h;->x(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->X:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 18
    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 19
    invoke-virtual {p0}, Lxyz/aethersx2/android/IntSpinBoxPreference;->W()V

    :cond_5
    return-void
.end method

.method public final v(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/preference/Preference;->v(Landroidx/preference/Preference;Z)V

    .line 2
    iget-object p1, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->Z:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->a0:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    :cond_1
    iget-object p1, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->Y:Landroid/widget/CheckBox;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 8
    :cond_2
    iget-object p1, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->X:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method public final x(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->U:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lxyz/aethersx2/android/IntSpinBoxPreference;->U:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
