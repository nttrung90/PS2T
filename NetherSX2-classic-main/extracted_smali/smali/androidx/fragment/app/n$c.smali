.class public final Landroidx/fragment/app/n$c;
.super Landroidx/fragment/app/n$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/n;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/n$c;->a:Landroidx/fragment/app/n;

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/n$l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n$c;->a:Landroidx/fragment/app/n;

    iget-object v0, v0, Landroidx/fragment/app/n;->W:Le1/c;

    invoke-virtual {v0}, Le1/c;->b()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/n$c;->a:Landroidx/fragment/app/n;

    invoke-static {v0}, Landroidx/lifecycle/y;->b(Le1/d;)V

    return-void
.end method
