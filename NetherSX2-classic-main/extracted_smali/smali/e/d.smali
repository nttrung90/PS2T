.class public final Le/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/b;


# instance fields
.field public final synthetic a:Le/e;


# direct methods
.method public constructor <init>(Le/e;)V
    .locals 0

    iput-object p1, p0, Le/d;->a:Le/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/d;->a:Le/e;

    invoke-virtual {v0}, Le/e;->x()Le/g;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Le/g;->j()V

    .line 3
    iget-object v1, p0, Le/d;->a:Le/e;

    .line 4
    iget-object v1, v1, Landroidx/activity/ComponentActivity;->g:Le1/c;

    .line 5
    iget-object v1, v1, Le1/c;->b:Le1/b;

    const-string v2, "androidx:appcompat"

    .line 6
    invoke-virtual {v1, v2}, Le1/b;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 7
    invoke-virtual {v0}, Le/g;->m()V

    return-void
.end method
