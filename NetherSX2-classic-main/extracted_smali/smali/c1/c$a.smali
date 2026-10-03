.class public final Lc1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc1/c;->C(Landroidx/appcompat/app/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc1/c;


# direct methods
.method public constructor <init>(Lc1/c;)V
    .locals 0

    iput-object p1, p0, Lc1/c$a;->c:Lc1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc1/c$a;->c:Lc1/c;

    iput p2, v0, Lc1/c;->A0:I

    const/4 p2, -0x1

    .line 2
    invoke-virtual {v0, p1, p2}, Landroidx/preference/a;->onClick(Landroid/content/DialogInterface;I)V

    .line 3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
