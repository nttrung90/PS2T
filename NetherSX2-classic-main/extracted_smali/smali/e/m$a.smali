.class public final Le/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Le/m;


# direct methods
.method public constructor <init>(Le/m;)V
    .locals 0

    iput-object p1, p0, Le/m$a;->c:Le/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Le/m$a;->c:Le/m;

    invoke-virtual {v0, p1}, Le/m;->c(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
