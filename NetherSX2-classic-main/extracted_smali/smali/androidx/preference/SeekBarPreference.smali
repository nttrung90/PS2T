.class public Landroidx/preference/SeekBarPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SeekBarPreference$c;
    }
.end annotation


# instance fields
.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:Z

.field public W:Landroid/widget/SeekBar;

.field public X:Landroid/widget/TextView;

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public final b0:Landroidx/preference/SeekBarPreference$a;

.field public final c0:Landroidx/preference/SeekBarPreference$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f040390

    .line 19
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const p3, 0x7f040390

    const/4 p4, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance v0, Landroidx/preference/SeekBarPreference$a;

    invoke-direct {v0, p0}, Landroidx/preference/SeekBarPreference$a;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->b0:Landroidx/preference/SeekBarPreference$a;

    .line 3
    new-instance v0, Landroidx/preference/SeekBarPreference$b;

    invoke-direct {v0, p0}, Landroidx/preference/SeekBarPreference$b;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->c0:Landroidx/preference/SeekBarPreference$b;

    .line 4
    sget-object v0, Lj3/q;->k:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 5
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->S:I

    const/4 p2, 0x1

    const/16 p3, 0x64

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 7
    iget v0, p0, Landroidx/preference/SeekBarPreference;->S:I

    if-ge p3, v0, :cond_0

    move p3, v0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->T:I

    if-eq p3, v0, :cond_1

    .line 9
    iput p3, p0, Landroidx/preference/SeekBarPreference;->T:I

    .line 10
    invoke-virtual {p0}, Landroidx/preference/Preference;->o()V

    :cond_1
    const/4 p3, 0x4

    .line 11
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 12
    iget v0, p0, Landroidx/preference/SeekBarPreference;->U:I

    if-eq p3, v0, :cond_2

    .line 13
    iget v0, p0, Landroidx/preference/SeekBarPreference;->T:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->S:I

    sub-int/2addr v0, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Landroidx/preference/SeekBarPreference;->U:I

    .line 14
    invoke-virtual {p0}, Landroidx/preference/Preference;->o()V

    :cond_2
    const/4 p3, 0x2

    .line 15
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->Y:Z

    const/4 p2, 0x5

    .line 16
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->Z:Z

    const/4 p2, 0x6

    .line 17
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->a0:Z

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->g(I)I

    move-result p1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Landroidx/preference/SeekBarPreference;->W(IZ)V

    return-void
.end method

.method public final W(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->S:I

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 2
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->T:I

    if-le p1, v0, :cond_1

    move p1, v0

    .line 3
    :cond_1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->R:I

    if-eq p1, v0, :cond_2

    .line 4
    iput p1, p0, Landroidx/preference/SeekBarPreference;->R:I

    .line 5
    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->Y(I)V

    .line 6
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->E(I)Z

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->o()V

    :cond_2
    return-void
.end method

.method public final X(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->S:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    add-int/2addr p1, v0

    .line 2
    iget v0, p0, Landroidx/preference/SeekBarPreference;->R:I

    if-eq p1, v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->a(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/preference/SeekBarPreference;->W(IZ)V

    :cond_0
    return-void
.end method

.method public final Y(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->X:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final t(Lc1/h;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->t(Lc1/h;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->c:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/SeekBarPreference;->c0:Landroidx/preference/SeekBarPreference$b;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f09020c

    .line 3
    invoke-virtual {p1, v0}, Lc1/h;->x(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->W:Landroid/widget/SeekBar;

    const v0, 0x7f09020d

    .line 4
    invoke-virtual {p1, v0}, Lc1/h;->x(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->X:Landroid/widget/TextView;

    .line 5
    iget-boolean v0, p0, Landroidx/preference/SeekBarPreference;->Z:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->X:Landroid/widget/TextView;

    .line 9
    :goto_0
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->W:Landroid/widget/SeekBar;

    if-nez p1, :cond_1

    const-string p1, "SeekBarPreference"

    const-string v0, "SeekBar view is null in onBindViewHolder."

    .line 10
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->b0:Landroidx/preference/SeekBarPreference$a;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 12
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->W:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->T:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->S:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 13
    iget p1, p0, Landroidx/preference/SeekBarPreference;->U:I

    if-eqz p1, :cond_2

    .line 14
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->W:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->W:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/AbsSeekBar;->getKeyProgressIncrement()I

    move-result p1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->U:I

    .line 16
    :goto_1
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->W:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->R:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->S:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 17
    iget p1, p0, Landroidx/preference/SeekBarPreference;->R:I

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->Y(I)V

    .line 18
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->W:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final x(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final y(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/SeekBarPreference$c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroidx/preference/Preference;->y(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroidx/preference/SeekBarPreference$c;

    .line 4
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->y(Landroid/os/Parcelable;)V

    .line 5
    iget v0, p1, Landroidx/preference/SeekBarPreference$c;->c:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->R:I

    .line 6
    iget v0, p1, Landroidx/preference/SeekBarPreference$c;->d:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->S:I

    .line 7
    iget p1, p1, Landroidx/preference/SeekBarPreference$c;->e:I

    iput p1, p0, Landroidx/preference/SeekBarPreference;->T:I

    .line 8
    invoke-virtual {p0}, Landroidx/preference/Preference;->o()V

    return-void
.end method

.method public final z()Landroid/os/Parcelable;
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/preference/Preference;->N:Z

    .line 2
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 3
    iget-boolean v1, p0, Landroidx/preference/Preference;->v:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Landroidx/preference/SeekBarPreference$c;

    invoke-direct {v1, v0}, Landroidx/preference/SeekBarPreference$c;-><init>(Landroid/os/Parcelable;)V

    .line 5
    iget v0, p0, Landroidx/preference/SeekBarPreference;->R:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$c;->c:I

    .line 6
    iget v0, p0, Landroidx/preference/SeekBarPreference;->S:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$c;->d:I

    .line 7
    iget v0, p0, Landroidx/preference/SeekBarPreference;->T:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$c;->e:I

    return-object v1
.end method
