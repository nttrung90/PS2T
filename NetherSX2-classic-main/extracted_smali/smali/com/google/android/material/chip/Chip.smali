.class public Lcom/google/android/material/chip/Chip;
.super Landroidx/appcompat/widget/f;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/chip/a$a;
.implements Ln2/l;
.implements Lf2/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/Chip$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/appcompat/widget/f;",
        "Lcom/google/android/material/chip/a$a;",
        "Ln2/l;",
        "Lf2/i<",
        "Lcom/google/android/material/chip/Chip;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:[I

.field public static final B:[I

.field public static final z:Landroid/graphics/Rect;


# instance fields
.field public g:Lcom/google/android/material/chip/a;

.field public h:Landroid/graphics/drawable/InsetDrawable;

.field public i:Landroid/graphics/drawable/RippleDrawable;

.field public j:Landroid/view/View$OnClickListener;

.field public k:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public l:Lf2/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf2/i$a<",
            "Lcom/google/android/material/chip/Chip;",
            ">;"
        }
    .end annotation
.end field

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:I

.field public s:I

.field public t:Ljava/lang/CharSequence;

.field public final u:Lcom/google/android/material/chip/Chip$b;

.field public v:Z

.field public final w:Landroid/graphics/Rect;

.field public final x:Landroid/graphics/RectF;

.field public final y:Lcom/google/android/material/chip/Chip$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/material/chip/Chip;->z:Landroid/graphics/Rect;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a1

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2
    sput-object v1, Lcom/google/android/material/chip/Chip;->A:[I

    new-array v0, v0, [I

    const v1, 0x101009f

    aput v1, v0, v3

    .line 3
    sput-object v0, Lcom/google/android/material/chip/Chip;->B:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    const v1, 0x7f0400c1

    const v2, 0x7f1103ee

    move-object/from16 v3, p1

    .line 1
    invoke-static {v3, v7, v1, v2}, Ls2/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v7, v1}, Landroidx/appcompat/widget/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->w:Landroid/graphics/Rect;

    .line 3
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->x:Landroid/graphics/RectF;

    .line 4
    new-instance v1, Lcom/google/android/material/chip/Chip$a;

    invoke-direct {v1, v0}, Lcom/google/android/material/chip/Chip$a;-><init>(Lcom/google/android/material/chip/Chip;)V

    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->y:Lcom/google/android/material/chip/Chip$a;

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x800013

    const/4 v10, 0x1

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "background"

    .line 6
    invoke-interface {v7, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Chip"

    if-eqz v2, :cond_1

    const-string v2, "Do not set the background; Chip manages its own background drawable."

    .line 7
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v2, "drawableLeft"

    .line 8
    invoke-interface {v7, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_15

    const-string v2, "drawableStart"

    .line 9
    invoke-interface {v7, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14

    const-string v2, "drawableEnd"

    .line 10
    invoke-interface {v7, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Please set end drawable using R.attr#closeIcon."

    if-nez v2, :cond_13

    const-string v2, "drawableRight"

    .line 11
    invoke-interface {v7, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    const-string v2, "singleLine"

    .line 12
    invoke-interface {v7, v1, v2, v10}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "lines"

    .line 13
    invoke-interface {v7, v1, v2, v10}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v10, :cond_11

    const-string v2, "minLines"

    .line 14
    invoke-interface {v7, v1, v2, v10}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v10, :cond_11

    const-string v2, "maxLines"

    .line 15
    invoke-interface {v7, v1, v2, v10}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v10, :cond_11

    const-string v2, "gravity"

    .line 16
    invoke-interface {v7, v1, v2, v9}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v9, :cond_2

    const-string v1, "Chip text must be vertically center and start aligned"

    .line 17
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_2
    :goto_0
    new-instance v11, Lcom/google/android/material/chip/a;

    invoke-direct {v11, v8, v7}, Lcom/google/android/material/chip/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iget-object v1, v11, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    sget-object v12, Ln2/e;->n:[I

    const/4 v13, 0x0

    new-array v6, v13, [I

    const v5, 0x7f1103ee

    const v4, 0x7f0400c1

    move-object/from16 v2, p2

    move-object v3, v12

    .line 20
    invoke-static/range {v1 .. v6}, Lf2/s;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v14, 0x25

    .line 21
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    iput-boolean v2, v11, Lcom/google/android/material/chip/a;->J0:Z

    .line 22
    iget-object v2, v11, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    const/16 v3, 0x18

    .line 23
    invoke-static {v2, v1, v3}, Lk2/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 24
    iget-object v3, v11, Lcom/google/android/material/chip/a;->B:Landroid/content/res/ColorStateList;

    if-eq v3, v2, :cond_3

    .line 25
    iput-object v2, v11, Lcom/google/android/material/chip/a;->B:Landroid/content/res/ColorStateList;

    .line 26
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    .line 27
    :cond_3
    iget-object v2, v11, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    const/16 v3, 0xb

    .line 28
    invoke-static {v2, v1, v3}, Lk2/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 29
    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->Q(Landroid/content/res/ColorStateList;)V

    const/16 v2, 0x13

    const/4 v3, 0x0

    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->X(F)V

    const/16 v2, 0xc

    .line 31
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->R(F)V

    .line 33
    :cond_4
    iget-object v2, v11, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    const/16 v4, 0x16

    .line 34
    invoke-static {v2, v1, v4}, Lk2/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 35
    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->Z(Landroid/content/res/ColorStateList;)V

    const/16 v2, 0x17

    .line 36
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->a0(F)V

    .line 37
    iget-object v2, v11, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    const/16 v4, 0x24

    invoke-static {v2, v1, v4}, Lk2/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->k0(Landroid/content/res/ColorStateList;)V

    const/4 v2, 0x5

    .line 38
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->l0(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v2, v11, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    .line 40
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 41
    invoke-virtual {v1, v13, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_5

    .line 42
    new-instance v5, Lk2/d;

    invoke-direct {v5, v2, v4}, Lk2/d;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    .line 43
    :goto_1
    iget v2, v5, Lk2/d;->k:F

    .line 44
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 45
    iput v2, v5, Lk2/d;->k:F

    .line 46
    invoke-virtual {v11, v5}, Lcom/google/android/material/chip/a;->m0(Lk2/d;)V

    const/4 v2, 0x3

    .line 47
    invoke-virtual {v1, v2, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-eq v4, v10, :cond_8

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    if-eq v4, v2, :cond_6

    goto :goto_2

    .line 48
    :cond_6
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 49
    iput-object v2, v11, Lcom/google/android/material/chip/a;->G0:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    .line 50
    :cond_7
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 51
    iput-object v2, v11, Lcom/google/android/material/chip/a;->G0:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    .line 52
    :cond_8
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 53
    iput-object v2, v11, Lcom/google/android/material/chip/a;->G0:Landroid/text/TextUtils$TruncateAt;

    :goto_2
    const/16 v2, 0x12

    .line 54
    invoke-virtual {v1, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->W(Z)V

    const-string v2, "http://schemas.android.com/apk/res-auto"

    if-eqz v7, :cond_9

    const-string v4, "chipIconEnabled"

    .line 55
    invoke-interface {v7, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v4, "chipIconVisible"

    .line 56
    invoke-interface {v7, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    const/16 v4, 0xf

    .line 57
    invoke-virtual {v1, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/material/chip/a;->W(Z)V

    .line 58
    :cond_9
    iget-object v4, v11, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    const/16 v5, 0xe

    invoke-static {v4, v1, v5}, Lk2/c;->d(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/google/android/material/chip/a;->T(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x11

    .line 59
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 60
    iget-object v5, v11, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    .line 61
    invoke-static {v5, v1, v4}, Lk2/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 62
    invoke-virtual {v11, v4}, Lcom/google/android/material/chip/a;->V(Landroid/content/res/ColorStateList;)V

    :cond_a
    const/16 v4, 0x10

    const/high16 v5, -0x40800000    # -1.0f

    .line 63
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/material/chip/a;->U(F)V

    const/16 v4, 0x1f

    .line 64
    invoke-virtual {v1, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/material/chip/a;->h0(Z)V

    if-eqz v7, :cond_b

    const-string v4, "closeIconEnabled"

    .line 65
    invoke-interface {v7, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v4, "closeIconVisible"

    .line 66
    invoke-interface {v7, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    const/16 v4, 0x1a

    .line 67
    invoke-virtual {v1, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/material/chip/a;->h0(Z)V

    .line 68
    :cond_b
    iget-object v4, v11, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    const/16 v5, 0x19

    invoke-static {v4, v1, v5}, Lk2/c;->d(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/google/android/material/chip/a;->b0(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v4, v11, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    const/16 v5, 0x1e

    .line 70
    invoke-static {v4, v1, v5}, Lk2/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 71
    invoke-virtual {v11, v4}, Lcom/google/android/material/chip/a;->g0(Landroid/content/res/ColorStateList;)V

    const/16 v4, 0x1c

    .line 72
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/material/chip/a;->d0(F)V

    const/4 v4, 0x6

    .line 73
    invoke-virtual {v1, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/material/chip/a;->M(Z)V

    const/16 v4, 0xa

    .line 74
    invoke-virtual {v1, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/material/chip/a;->P(Z)V

    if-eqz v7, :cond_c

    const-string v4, "checkedIconEnabled"

    .line 75
    invoke-interface {v7, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    const-string v4, "checkedIconVisible"

    .line 76
    invoke-interface {v7, v2, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    const/16 v2, 0x8

    .line 77
    invoke-virtual {v1, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->P(Z)V

    .line 78
    :cond_c
    iget-object v2, v11, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    const/4 v4, 0x7

    invoke-static {v2, v1, v4}, Lk2/c;->d(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->N(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x9

    .line 79
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 80
    iget-object v4, v11, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    .line 81
    invoke-static {v4, v1, v2}, Lk2/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 82
    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->O(Landroid/content/res/ColorStateList;)V

    .line 83
    :cond_d
    iget-object v2, v11, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    const/16 v4, 0x27

    invoke-static {v2, v1, v4}, Lp1/g;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lp1/g;

    move-result-object v2

    .line 84
    iput-object v2, v11, Lcom/google/android/material/chip/a;->Y:Lp1/g;

    .line 85
    iget-object v2, v11, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    const/16 v4, 0x21

    invoke-static {v2, v1, v4}, Lp1/g;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lp1/g;

    move-result-object v2

    .line 86
    iput-object v2, v11, Lcom/google/android/material/chip/a;->Z:Lp1/g;

    const/16 v2, 0x15

    .line 87
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->Y(F)V

    const/16 v2, 0x23

    .line 88
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->j0(F)V

    const/16 v2, 0x22

    .line 89
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->i0(F)V

    const/16 v2, 0x29

    .line 90
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->o0(F)V

    const/16 v2, 0x28

    .line 91
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->n0(F)V

    const/16 v2, 0x1d

    .line 92
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->e0(F)V

    const/16 v2, 0x1b

    .line 93
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->c0(F)V

    const/16 v2, 0xd

    .line 94
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/chip/a;->S(F)V

    const/4 v2, 0x4

    const v3, 0x7fffffff

    .line 95
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 96
    iput v2, v11, Lcom/google/android/material/chip/a;->I0:I

    .line 97
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-array v6, v13, [I

    const v15, 0x7f1103ee

    const v16, 0x7f0400c1

    const v4, 0x7f0400c1

    const v5, 0x7f1103ee

    move-object v1, v8

    move-object/from16 v2, p2

    move-object v3, v12

    .line 98
    invoke-static/range {v1 .. v6}, Lf2/s;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x20

    .line 99
    invoke-virtual {v1, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/chip/Chip;->q:Z

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lf2/x;->a(Landroid/content/Context;I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/16 v3, 0x14

    .line 101
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-double v2, v2

    .line 102
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lcom/google/android/material/chip/Chip;->s:I

    .line 103
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    invoke-virtual {v0, v11}, Lcom/google/android/material/chip/Chip;->setChipDrawable(Lcom/google/android/material/chip/a;)V

    .line 105
    invoke-static/range {p0 .. p0}, Lj0/a0$i;->i(Landroid/view/View;)F

    move-result v1

    .line 106
    invoke-virtual {v11, v1}, Ln2/f;->o(F)V

    new-array v6, v13, [I

    move-object v1, v8

    move-object/from16 v2, p2

    move-object v3, v12

    move/from16 v4, v16

    move v5, v15

    .line 107
    invoke-static/range {v1 .. v6}, Lf2/s;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 108
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    .line 109
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    new-instance v1, Lcom/google/android/material/chip/Chip$b;

    invoke-direct {v1, v0, v0}, Lcom/google/android/material/chip/Chip$b;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V

    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->u:Lcom/google/android/material/chip/Chip$b;

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/Chip;->i()V

    if-nez v2, :cond_e

    .line 112
    new-instance v1, Lx1/b;

    invoke-direct {v1, v0}, Lx1/b;-><init>(Lcom/google/android/material/chip/Chip;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 113
    :cond_e
    iget-boolean v1, v0, Lcom/google/android/material/chip/Chip;->m:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 114
    iget-object v1, v11, Lcom/google/android/material/chip/a;->I:Ljava/lang/CharSequence;

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, v11, Lcom/google/android/material/chip/a;->G0:Landroid/text/TextUtils$TruncateAt;

    .line 117
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/Chip;->m()V

    .line 119
    iget-object v1, v0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    .line 120
    iget-boolean v1, v1, Lcom/google/android/material/chip/a;->H0:Z

    if-nez v1, :cond_f

    .line 121
    invoke-virtual {v0, v10}, Lcom/google/android/material/chip/Chip;->setLines(I)V

    .line 122
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 123
    :cond_f
    invoke-virtual {v0, v9}, Lcom/google/android/material/chip/Chip;->setGravity(I)V

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/Chip;->l()V

    .line 125
    iget-boolean v1, v0, Lcom/google/android/material/chip/Chip;->q:Z

    if-eqz v1, :cond_10

    .line 126
    iget v1, v0, Lcom/google/android/material/chip/Chip;->s:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 127
    :cond_10
    invoke-static/range {p0 .. p0}, Lj0/a0$e;->d(Landroid/view/View;)I

    move-result v1

    .line 128
    iput v1, v0, Lcom/google/android/material/chip/Chip;->r:I

    .line 129
    new-instance v1, Lx1/a;

    invoke-direct {v1, v0}, Lx1/a;-><init>(Lcom/google/android/material/chip/Chip;)V

    invoke-super {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    .line 130
    :cond_11
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Chip does not support multi-line text"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_12
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_13
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_14
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_15
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic b(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->x:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->x:Landroid/graphics/RectF;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/chip/a;->D(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->x:Landroid/graphics/RectF;

    return-object v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->w:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->w:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getTextAppearance()Lk2/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/material/chip/a;->o0:Lf2/q;

    .line 3
    iget-object v0, v0, Lf2/q;->f:Lk2/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private setCloseIconHovered(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->o:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->o:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->n:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/Chip;->s:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->d(I)Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method public final d(I)Z
    .locals 9

    .line 1
    iput p1, p0, Lcom/google/android/material/chip/Chip;->s:I

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->j()V

    :goto_0
    return v1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    .line 7
    iget v0, v0, Lcom/google/android/material/chip/a;->D:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    .line 8
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 9
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    invoke-virtual {v2}, Lcom/google/android/material/chip/a;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gtz v2, :cond_3

    if-gtz v0, :cond_3

    .line 10
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->j()V

    :goto_1
    return v1

    :cond_3
    if-lez v2, :cond_4

    .line 13
    div-int/lit8 v2, v2, 0x2

    move v7, v2

    goto :goto_2

    :cond_4
    move v7, v1

    :goto_2
    if-lez v0, :cond_5

    .line 14
    div-int/lit8 v1, v0, 0x2

    :cond_5
    move v8, v1

    .line 15
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/graphics/drawable/InsetDrawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 17
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 18
    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ne v2, v8, :cond_6

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v8, :cond_6

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ne v2, v7, :cond_6

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, v7, :cond_6

    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->j()V

    return v1

    .line 20
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinHeight()I

    move-result v0

    if-eq v0, p1, :cond_7

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 22
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinWidth()I

    move-result v0

    if-eq v0, p1, :cond_8

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 24
    :cond_8
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    iget-object v4, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    move-object v3, p1

    move v5, v7

    move v6, v8

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/graphics/drawable/InsetDrawable;

    .line 25
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->j()V

    return v1
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->v:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->u:Lcom/google/android/material/chip/Chip$b;

    .line 4
    iget-object v1, v0, Lq0/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    iget-object v1, v0, Lq0/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x7

    const/16 v5, 0x100

    const/16 v6, 0x80

    const/high16 v7, -0x80000000

    if-eq v1, v4, :cond_4

    const/16 v4, 0x9

    if-eq v1, v4, :cond_4

    const/16 v4, 0xa

    if-eq v1, v4, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    iget v1, v0, Lq0/a;->m:I

    if-eq v1, v7, :cond_7

    if-ne v1, v7, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    iput v7, v0, Lq0/a;->m:I

    .line 8
    invoke-virtual {v0, v7, v6}, Lq0/a;->s(II)Z

    .line 9
    invoke-virtual {v0, v1, v5}, Lq0/a;->s(II)Z

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 11
    iget-object v8, v0, Lcom/google/android/material/chip/Chip$b;->q:Lcom/google/android/material/chip/Chip;

    .line 12
    invoke-virtual {v8}, Lcom/google/android/material/chip/Chip;->e()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 13
    iget-object v8, v0, Lcom/google/android/material/chip/Chip$b;->q:Lcom/google/android/material/chip/Chip;

    invoke-static {v8}, Lcom/google/android/material/chip/Chip;->b(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8, v1, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    move v1, v3

    .line 14
    :goto_0
    iget v4, v0, Lq0/a;->m:I

    if-ne v4, v1, :cond_6

    goto :goto_1

    .line 15
    :cond_6
    iput v1, v0, Lq0/a;->m:I

    .line 16
    invoke-virtual {v0, v1, v6}, Lq0/a;->s(II)Z

    .line 17
    invoke-virtual {v0, v4, v5}, Lq0/a;->s(II)Z

    :goto_1
    if-eq v1, v7, :cond_7

    :goto_2
    move v0, v2

    goto :goto_4

    :cond_7
    :goto_3
    move v0, v3

    :goto_4
    if-nez v0, :cond_9

    .line 18
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move v2, v3

    :cond_9
    :goto_5
    return v2
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->v:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->u:Lcom/google/android/material/chip/Chip$b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    if-eq v1, v4, :cond_9

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v5, 0x3d

    const/4 v6, 0x0

    if-eq v1, v5, :cond_7

    const/16 v5, 0x42

    if-eq v1, v5, :cond_5

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 6
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v7

    if-eqz v7, :cond_9

    const/16 v7, 0x13

    if-eq v1, v7, :cond_2

    const/16 v7, 0x15

    if-eq v1, v7, :cond_1

    const/16 v7, 0x16

    if-eq v1, v7, :cond_3

    const/16 v5, 0x82

    goto :goto_0

    :cond_1
    const/16 v5, 0x11

    goto :goto_0

    :cond_2
    const/16 v5, 0x21

    .line 7
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    add-int/2addr v1, v4

    move v7, v2

    :goto_1
    if-ge v2, v1, :cond_4

    .line 8
    invoke-virtual {v0, v5, v6}, Lq0/a;->n(ILandroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v2, v2, 0x1

    move v7, v4

    goto :goto_1

    :cond_4
    move v2, v7

    goto :goto_2

    .line 9
    :cond_5
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_9

    .line 11
    iget v1, v0, Lq0/a;->l:I

    if-eq v1, v3, :cond_6

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/chip/Chip$b;->p(II)Z

    :cond_6
    move v2, v4

    goto :goto_2

    .line 12
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    .line 13
    invoke-virtual {v0, v1, v6}, Lq0/a;->n(ILandroid/graphics/Rect;)Z

    move-result v2

    goto :goto_2

    .line 14
    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 15
    invoke-virtual {v0, v4, v6}, Lq0/a;->n(ILandroid/graphics/Rect;)Z

    move-result v2

    :cond_9
    :goto_2
    if-eqz v2, :cond_a

    .line 16
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->u:Lcom/google/android/material/chip/Chip$b;

    .line 17
    iget v0, v0, Lq0/a;->l:I

    if-eq v0, v3, :cond_a

    return v4

    .line 18
    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final drawableStateChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/f;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 3
    iget-object v0, v0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->J(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    .line 6
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->p:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 7
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->o:Z

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 8
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 10
    :cond_3
    new-array v2, v2, [I

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x101009e

    .line 12
    aput v3, v2, v1

    const/4 v1, 0x1

    .line 13
    :cond_4
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->p:Z

    if-eqz v3, :cond_5

    const v3, 0x101009c

    .line 14
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    .line 15
    :cond_5
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->o:Z

    if-eqz v3, :cond_6

    const v3, 0x1010367

    .line 16
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    .line 17
    :cond_6
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eqz v3, :cond_7

    const v3, 0x10100a7

    .line 18
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    .line 19
    :cond_7
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x10100a1

    .line 20
    aput v3, v2, v1

    .line 21
    :cond_8
    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/a;->f0([I)Z

    move-result v1

    :cond_9
    if-eqz v1, :cond_a

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->G()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Lcom/google/android/material/chip/a;->U:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 2
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->j:Landroid/view/View$OnClickListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v0, v2

    .line 4
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->v:Z

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->u:Lcom/google/android/material/chip/Chip$b;

    invoke-virtual {v1, v2, v2}, Lq0/a;->s(II)Z

    :cond_1
    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->t:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->t:Ljava/lang/CharSequence;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/google/android/material/chip/ChipGroup;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    .line 6
    iget-object v0, v0, Lcom/google/android/material/chip/ChipGroup;->j:Lf2/b;

    .line 7
    iget-boolean v0, v0, Lf2/b;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "android.widget.RadioButton"

    return-object v0

    :cond_1
    const-string v0, "android.widget.CompoundButton"

    return-object v0

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.widget.Button"

    return-object v0

    :cond_3
    const-string v0, "android.view.View"

    return-object v0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    :cond_0
    return-object v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/material/chip/a;->W:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/material/chip/a;->X:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/material/chip/a;->C:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipCornerRadius()F
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->F()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_0
    return v1
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    return-object v0
.end method

.method public getChipEndPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/google/android/material/chip/a;->h0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ld0/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public getChipIconSize()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/google/android/material/chip/a;->M:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/material/chip/a;->L:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipMinHeight()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/google/android/material/chip/a;->D:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipStartPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/google/android/material/chip/a;->a0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/material/chip/a;->F:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChipStrokeWidth()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/google/android/material/chip/a;->G:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->G()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/material/chip/a;->T:Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/google/android/material/chip/a;->g0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCloseIconSize()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/google/android/material/chip/a;->S:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCloseIconStartPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/google/android/material/chip/a;->f0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/material/chip/a;->R:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/material/chip/a;->G0:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getFocusedRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->u:Lcom/google/android/material/chip/Chip$b;

    .line 2
    iget v1, v0, Lq0/a;->l:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3
    iget v0, v0, Lq0/a;->k:I

    if-ne v0, v2, :cond_1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getHideMotionSpec()Lp1/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/material/chip/a;->Z:Lp1/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIconEndPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/google/android/material/chip/a;->c0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIconStartPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/google/android/material/chip/a;->b0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/material/chip/a;->H:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getShapeAppearanceModel()Ln2/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    .line 2
    iget-object v0, v0, Ln2/f;->c:Ln2/f$b;

    iget-object v0, v0, Ln2/f$b;->a:Ln2/i;

    return-object v0
.end method

.method public getShowMotionSpec()Lp1/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/material/chip/a;->Y:Lp1/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextEndPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/google/android/material/chip/a;->e0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTextStartPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/google/android/material/chip/a;->d0:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/graphics/drawable/InsetDrawable;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipMinHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->j()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, v0, Lcom/google/android/material/chip/a;->O:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->u:Lcom/google/android/material/chip/Chip$b;

    invoke-static {p0, v0}, Lj0/a0;->q(Landroid/view/View;Lj0/a;)V

    .line 6
    iput-boolean v2, p0, Lcom/google/android/material/chip/Chip;->v:Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0}, Lj0/a0;->q(Landroid/view/View;Lj0/a;)V

    .line 8
    iput-boolean v1, p0, Lcom/google/android/material/chip/Chip;->v:Z

    :goto_1
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    sget-object v0, Ll2/a;->a:[I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->k()V

    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    .line 2
    iget-object v1, v1, Lcom/google/android/material/chip/a;->H:Landroid/content/res/ColorStateList;

    .line 3
    invoke-static {v1}, Ll2/a;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/RippleDrawable;

    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->p0()V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/RippleDrawable;

    sget-object v1, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {p0, v0}, Lj0/a0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->l()V

    return-void
.end method

.method public final l()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v1, v0, Lcom/google/android/material/chip/a;->h0:F

    .line 3
    iget v2, v0, Lcom/google/android/material/chip/a;->e0:F

    add-float/2addr v1, v2

    .line 4
    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->E()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    .line 6
    iget v2, v1, Lcom/google/android/material/chip/a;->a0:F

    .line 7
    iget v3, v1, Lcom/google/android/material/chip/a;->d0:F

    add-float/2addr v2, v3

    .line 8
    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->B()F

    move-result v1

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 9
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v2, :cond_1

    .line 10
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 11
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 12
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    .line 13
    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 15
    sget-object v4, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 16
    invoke-static {p0, v1, v2, v0, v3}, Lj0/a0$e;->k(Landroid/view/View;IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final m()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lk2/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->y:Lcom/google/android/material/chip/Chip$a;

    invoke-virtual {v1, v2, v0, v3}, Lk2/d;->e(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/fragment/app/q;)V

    :cond_1
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    invoke-static {p0, v0}, Lj3/q;->t(Landroid/view/View;Ln2/f;)V

    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/android/material/chip/Chip;->A:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/google/android/material/chip/Chip;->B:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->v:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->u:Lcom/google/android/material/chip/Chip$b;

    .line 4
    iget v1, v0, Lq0/a;->l:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Lq0/a;->k(I)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v0, p2, p3}, Lq0/a;->n(ILandroid/graphics/Rect;)Z

    :cond_1
    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    .line 4
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/chip/ChipGroup;

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    .line 7
    iget-boolean v1, v0, Lf2/g;->e:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move v3, v1

    .line 8
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/google/android/material/chip/Chip;

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/chip/Chip;

    if-ne v4, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_1
    const v0, 0x7f0901f4

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 12
    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 14
    :goto_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    .line 15
    invoke-static {v2, v1, v3, v1, v0}, Lk0/f$c;->a(IIIIZ)Lk0/f$c;

    move-result-object v0

    .line 16
    iget-object v0, v0, Lk0/f$c;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    :cond_4
    return-void
.end method

.method public final onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    .line 2
    iget v0, p0, Lcom/google/android/material/chip/Chip;->r:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Lcom/google/android/material/chip/Chip;->r:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->l()V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    .line 4
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_1

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()Z

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    .line 7
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_5

    .line 8
    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    :cond_4
    :goto_1
    move v0, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v2

    :goto_3
    if-nez v0, :cond_6

    .line 9
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    move v2, v3

    :cond_7
    return v2
.end method

.method public setAccessibilityClassName(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->t:Ljava/lang/CharSequence;

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    const-string p1, "Chip"

    const-string v0, "Do not set the background; Chip manages its own background drawable."

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background color; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    const-string p1, "Chip"

    const-string v0, "Do not set the background drawable; Chip manages its own background drawable."

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background resource; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background tint list; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background tint mode; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->M(Z)V

    :cond_0
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->M(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->m:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, v0, Lcom/google/android/material/chip/a;->U:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->N(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(I)V

    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-static {v1, p1}, Lf/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->N(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->O(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconTintResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-static {v1, p1}, Lf/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->O(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->P(Z)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->P(Z)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->Q(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-static {v1, p1}, Lf/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->Q(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->R(F)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->R(F)V

    :cond_0
    return-void
.end method

.method public setChipDrawable(Lcom/google/android/material/chip/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/google/android/material/chip/a;->F0:Ljava/lang/ref/WeakReference;

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/google/android/material/chip/a;->H0:Z

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/google/android/material/chip/a;->F0:Ljava/lang/ref/WeakReference;

    .line 7
    iget p1, p0, Lcom/google/android/material/chip/Chip;->s:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->d(I)Z

    :cond_1
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->S(F)V

    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->S(F)V

    :cond_0
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->T(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(I)V

    return-void
.end method

.method public setChipIconResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-static {v1, p1}, Lf/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->T(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->U(F)V

    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->U(F)V

    :cond_0
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->V(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipIconTintResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-static {v1, p1}, Lf/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->V(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->W(Z)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->W(Z)V

    :cond_0
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->X(F)V

    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->X(F)V

    :cond_0
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->Y(F)V

    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->Y(F)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->Z(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-static {v1, p1}, Lf/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->Z(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->a0(F)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->a0(F)V

    :cond_0
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChipTextResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->b0(Landroid/graphics/drawable/Drawable;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->T:Landroid/text/SpannableStringBuilder;

    if-eq v1, p1, :cond_0

    .line 3
    invoke-static {}, Lh0/a;->c()Lh0/a;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lh0/a;->c:Lh0/c;

    invoke-virtual {v1, p1, v2}, Lh0/a;->d(Ljava/lang/CharSequence;Lh0/c;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 5
    check-cast p1, Landroid/text/SpannableStringBuilder;

    iput-object p1, v0, Lcom/google/android/material/chip/a;->T:Landroid/text/SpannableStringBuilder;

    .line 6
    invoke-virtual {v0}, Ln2/f;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(I)V

    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->c0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->c0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-static {v1, p1}, Lf/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->b0(Landroid/graphics/drawable/Drawable;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->d0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->d0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->e0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->e0(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->g0(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-static {v1, p1}, Lf/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->g0(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconVisible(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->h0(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElevation(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ln2/f;->o(F)V

    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_2

    .line 3
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_1

    .line 5
    iput-object p1, v0, Lcom/google/android/material/chip/a;->G0:Landroid/text/TextUtils$TruncateAt;

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Text within a chip are not allowed to scroll."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->q:Z

    .line 2
    iget p1, p0, Lcom/google/android/material/chip/Chip;->s:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->d(I)Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    const v0, 0x800013

    if-eq p1, v0, :cond_0

    const-string p1, "Chip"

    const-string v0, "Chip text must be vertically center and start aligned"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    return-void
.end method

.method public setHideMotionSpec(Lp1/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, v0, Lcom/google/android/material/chip/a;->Z:Lp1/g;

    :cond_0
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-static {v1, p1}, Lp1/g;->b(Landroid/content/Context;I)Lp1/g;

    move-result-object p1

    .line 3
    iput-object p1, v0, Lcom/google/android/material/chip/a;->Z:Lp1/g;

    :cond_0
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->i0(F)V

    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->i0(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->j0(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->j0(F)V

    :cond_0
    return-void
.end method

.method public setInternalOnCheckedChangeListener(Lf2/i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/i$a<",
            "Lcom/google/android/material/chip/Chip;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->l:Lf2/i$a;

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method public setLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 3
    iput p1, v0, Lcom/google/android/material/chip/a;->I0:I

    :cond_0
    return-void
.end method

.method public setMinLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMinLines(I)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->j:Landroid/view/View$OnClickListener;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->k0(Landroid/content/res/ColorStateList;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    .line 4
    iget-boolean p1, p1, Lcom/google/android/material/chip/a;->D0:Z

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->k()V

    :cond_1
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-static {v1, p1}, Lf/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->k0(Landroid/content/res/ColorStateList;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    .line 4
    iget-boolean p1, p1, Lcom/google/android/material/chip/a;->D0:Z

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->k()V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Ln2/i;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Ln2/f;->setShapeAppearanceModel(Ln2/i;)V

    return-void
.end method

.method public setShowMotionSpec(Lp1/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, v0, Lcom/google/android/material/chip/a;->Y:Lp1/g;

    :cond_0
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-static {v1, p1}, Lp1/g;->b(Landroid/content/Context;I)Lp1/g;

    move-result-object p1

    .line 3
    iput-object p1, v0, Lcom/google/android/material/chip/a;->Y:Lp1/g;

    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 2
    :cond_1
    iget-boolean v0, v0, Lcom/google/android/material/chip/a;->H0:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 3
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4
    iget-object p2, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/material/chip/a;->l0(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 3

    .line 8
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 9
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 10
    new-instance v1, Lk2/d;

    iget-object v2, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lk2/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/a;->m0(Lk2/d;)V

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->m()V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 2

    .line 4
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Lk2/d;

    iget-object v1, p1, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lk2/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/a;->m0(Lk2/d;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->m()V

    return-void
.end method

.method public setTextAppearance(Lk2/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->m0(Lk2/d;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->m()V

    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/chip/Chip;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->n0(F)V

    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->n0(F)V

    :cond_0
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->o0(F)V

    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/material/chip/a;->i0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->o0(F)V

    :cond_0
    return-void
.end method
