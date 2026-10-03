.class public final Landroidx/fragment/app/y$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/y;->b(Landroidx/fragment/app/t;Landroidx/fragment/app/q;Landroidx/fragment/app/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroidx/fragment/app/n;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/n;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/y$g;->c:Landroidx/fragment/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroidx/fragment/app/n;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/y$g;->c:Landroidx/fragment/app/n;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/n;->onAttachFragment(Landroidx/fragment/app/n;)V

    return-void
.end method
