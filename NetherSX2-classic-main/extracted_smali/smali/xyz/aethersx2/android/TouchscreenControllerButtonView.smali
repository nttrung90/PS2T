.class public final Lxyz/aethersx2/android/TouchscreenControllerButtonView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyz/aethersx2/android/TouchscreenControllerButtonView$a;
    }
.end annotation


# static fields
.field public static final synthetic o:I


# instance fields
.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:Lxyz/aethersx2/android/TouchscreenControllerButtonView$a;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->e:Z

    .line 3
    iput-boolean p1, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->f:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->g:I

    .line 5
    iput v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->h:I

    .line 6
    sget-object v0, Lxyz/aethersx2/android/TouchscreenControllerButtonView$a;->c:Lxyz/aethersx2/android/TouchscreenControllerButtonView$a;

    iput-object v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->i:Lxyz/aethersx2/android/TouchscreenControllerButtonView$a;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->k:Z

    .line 8
    iput-boolean v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->l:Z

    .line 9
    iput-boolean p1, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->m:Z

    .line 10
    iput-boolean p1, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->n:Z

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Ln2/e;->Y:[I

    invoke-virtual {v1, p2, v2, p1, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 12
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->c:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 15
    :cond_0
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->d:Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 18
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getConfigName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->k:Z

    return v0
.end method

.method public getIsGlidable()Z
    .locals 1

    iget-boolean v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->l:Z

    return v0
.end method

.method public getPressedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getToggle()Z
    .locals 1

    iget-boolean v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->m:Z

    return v0
.end method

.method public getUnpressedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final isPressed()Z
    .locals 1

    iget-boolean v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->e:Z

    return v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 4
    iget-boolean v3, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->e:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    const/high16 v3, 0x41200000    # 10.0f

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 6
    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    rsub-int/lit8 v3, v1, 0x0

    add-int/2addr v0, v1

    add-int/2addr v2, v1

    move v1, v3

    goto :goto_0

    :cond_0
    move v3, v1

    .line 7
    :goto_0
    iget-boolean v4, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->e:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->c:Landroid/graphics/drawable/Drawable;

    :goto_1
    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v4, v1, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public setConfigName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->j:Ljava/lang/String;

    return-void
.end method

.method public setDefaultVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->k:Z

    return-void
.end method

.method public setHapticFeedback(Z)V
    .locals 0

    iput-boolean p1, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->f:Z

    return-void
.end method

.method public setHotkey(Lxyz/aethersx2/android/TouchscreenControllerButtonView$a;)V
    .locals 0

    iput-object p1, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->i:Lxyz/aethersx2/android/TouchscreenControllerButtonView$a;

    return-void
.end method

.method public setIsGlidable(Z)V
    .locals 0

    iput-boolean p1, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->l:Z

    return-void
.end method

.method public setPressed(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->m:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->n:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean p1, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->n:Z

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-boolean v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->e:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->e:Z

    goto :goto_0

    .line 5
    :cond_2
    iget-boolean v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->e:Z

    if-ne p1, v0, :cond_3

    return-void

    .line 6
    :cond_3
    iput-boolean p1, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->e:Z

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    iget v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->h:I

    if-ltz v0, :cond_8

    .line 9
    iget v2, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->g:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-gez v2, :cond_5

    neg-int v2, v2

    sub-int/2addr v2, v1

    .line 10
    iget-boolean v5, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->e:Z

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    invoke-static {v2, v0, v3}, Lxyz/aethersx2/android/NativeLibrary;->setUSBDeviceBind(IIF)V

    goto :goto_3

    :cond_5
    const/16 v5, 0x3e8

    if-ge v0, v5, :cond_7

    .line 11
    iget-boolean v5, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->e:Z

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    invoke-static {v2, v0, v3}, Lxyz/aethersx2/android/NativeLibrary;->setPadValue(IIF)V

    goto :goto_3

    :cond_7
    sub-int/2addr v0, v5

    .line 12
    iget-boolean v3, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->e:Z

    invoke-static {v2, v0, v3}, Lxyz/aethersx2/android/NativeLibrary;->setPadMacroState(IIZ)V

    .line 13
    :cond_8
    :goto_3
    iget-object v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->i:Lxyz/aethersx2/android/TouchscreenControllerButtonView$a;

    sget-object v2, Lxyz/aethersx2/android/TouchscreenControllerButtonView$a;->c:Lxyz/aethersx2/android/TouchscreenControllerButtonView$a;

    if-ne v0, v2, :cond_9

    goto :goto_4

    .line 14
    :cond_9
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->getEmulationActivity()Lxyz/aethersx2/android/EmulationActivity;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_4

    .line 15
    :cond_a
    iget-object v2, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->i:Lxyz/aethersx2/android/TouchscreenControllerButtonView$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_4

    .line 16
    :pswitch_0
    iget-boolean v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->e:Z

    if-nez v0, :cond_b

    .line 17
    invoke-static {v3}, Lxyz/aethersx2/android/NativeLibrary;->saveStateSlot(I)V

    goto :goto_4

    .line 18
    :pswitch_1
    iget-boolean v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->e:Z

    if-nez v0, :cond_b

    .line 19
    invoke-static {v3}, Lxyz/aethersx2/android/NativeLibrary;->loadStateSlot(I)V

    goto :goto_4

    .line 20
    :pswitch_2
    iget-boolean v2, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->e:Z

    if-nez v2, :cond_b

    .line 21
    invoke-virtual {v0}, Lxyz/aethersx2/android/EmulationActivity;->N()V

    goto :goto_4

    .line 22
    :pswitch_3
    iget-boolean v2, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->e:Z

    if-nez v2, :cond_b

    .line 23
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lq3/k1;

    invoke-direct {v3, v0, v1}, Lq3/k1;-><init>(Lxyz/aethersx2/android/EmulationActivity;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 24
    :pswitch_4
    iget-boolean v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->e:Z

    if-nez v0, :cond_b

    const/4 v0, 0x3

    .line 25
    invoke-static {v0}, Lxyz/aethersx2/android/NativeLibrary;->toggleLimiterMode(I)V

    goto :goto_4

    .line 26
    :pswitch_5
    iget-boolean v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->e:Z

    if-nez v0, :cond_b

    const/4 v0, 0x2

    .line 27
    invoke-static {v0}, Lxyz/aethersx2/android/NativeLibrary;->toggleLimiterMode(I)V

    goto :goto_4

    .line 28
    :pswitch_6
    iget-boolean v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->e:Z

    if-nez v0, :cond_b

    .line 29
    invoke-static {v1}, Lxyz/aethersx2/android/NativeLibrary;->toggleLimiterMode(I)V

    .line 30
    :cond_b
    :goto_4
    iget-boolean v0, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->f:Z

    if-eqz v0, :cond_d

    if-eqz p1, :cond_c

    goto :goto_5

    :cond_c
    const/16 v1, 0x8

    .line 31
    :goto_5
    invoke-virtual {p0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPressedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setToggle(Z)V
    .locals 0

    iput-boolean p1, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->m:Z

    return-void
.end method

.method public setUnpressedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method
