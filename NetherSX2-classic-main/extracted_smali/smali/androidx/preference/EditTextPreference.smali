.class public Landroidx/preference/EditTextPreference;
.super Landroidx/preference/DialogPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/EditTextPreference$b;,
        Landroidx/preference/EditTextPreference$a;
    }
.end annotation


# instance fields
.field public X:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f04017e

    const v1, 0x1010092

    .line 9
    invoke-static {p1, v0, v1}, Lb0/i;->a(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 p4, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    sget-object v0, Lj3/q;->d:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-static {p1, p4, p4, p4}, Lb0/i;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    sget-object p2, Landroidx/preference/EditTextPreference$b;->a:Landroidx/preference/EditTextPreference$b;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Landroidx/preference/EditTextPreference$b;

    invoke-direct {p2}, Landroidx/preference/EditTextPreference$b;-><init>()V

    sput-object p2, Landroidx/preference/EditTextPreference$b;->a:Landroidx/preference/EditTextPreference$b;

    .line 6
    :cond_0
    sget-object p2, Landroidx/preference/EditTextPreference$b;->a:Landroidx/preference/EditTextPreference$b;

    .line 7
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->O(Landroidx/preference/Preference$g;)V

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->W(Ljava/lang/String;)V

    return-void
.end method

.method public final S()Z
    .locals 1

    iget-object v0, p0, Landroidx/preference/EditTextPreference;->X:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/preference/Preference;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final W(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->S()Z

    move-result v0

    .line 2
    iput-object p1, p0, Landroidx/preference/EditTextPreference;->X:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->F(Ljava/lang/String;)Z

    .line 4
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->S()Z

    move-result p1

    if-eq p1, v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->p(Z)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->o()V

    return-void
.end method

.method public final x(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final y(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/EditTextPreference$a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroidx/preference/Preference;->y(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroidx/preference/EditTextPreference$a;

    .line 4
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->y(Landroid/os/Parcelable;)V

    .line 5
    iget-object p1, p1, Landroidx/preference/EditTextPreference$a;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->W(Ljava/lang/String;)V

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
    new-instance v1, Landroidx/preference/EditTextPreference$a;

    invoke-direct {v1, v0}, Landroidx/preference/EditTextPreference$a;-><init>(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, Landroidx/preference/EditTextPreference;->X:Ljava/lang/String;

    .line 6
    iput-object v0, v1, Landroidx/preference/EditTextPreference$a;->c:Ljava/lang/String;

    return-object v1
.end method
