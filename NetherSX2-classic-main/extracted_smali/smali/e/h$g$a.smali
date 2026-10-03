.class public final Le/h$g$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h$g;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/h$g;


# direct methods
.method public constructor <init>(Le/h$g;)V
    .locals 0

    iput-object p1, p0, Le/h$g$a;->a:Le/h$g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Le/h$g$a;->a:Le/h$g;

    invoke-virtual {p1}, Le/h$g;->d()V

    return-void
.end method
