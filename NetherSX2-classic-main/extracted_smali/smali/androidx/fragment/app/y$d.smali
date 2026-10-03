.class public final Landroidx/fragment/app/y$d;
.super Landroidx/fragment/app/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/fragment/app/y;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/y;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/y$d;->b:Landroidx/fragment/app/y;

    invoke-direct {p0}, Landroidx/fragment/app/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/n;
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/y$d;->b:Landroidx/fragment/app/y;

    .line 2
    iget-object p1, p1, Landroidx/fragment/app/y;->u:Landroidx/fragment/app/t;

    .line 3
    iget-object p1, p1, Landroidx/fragment/app/t;->d:Landroid/content/Context;

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p2, v0}, Landroidx/fragment/app/n;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/n;

    move-result-object p1

    return-object p1
.end method
