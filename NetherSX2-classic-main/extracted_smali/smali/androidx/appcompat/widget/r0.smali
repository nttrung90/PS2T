.class public final Landroidx/appcompat/widget/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic c:Landroidx/appcompat/widget/s0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/s0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/s0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
