.class public final Lu0/a$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu0/a$d;-><init>(Lu0/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu0/a$d;


# direct methods
.method public constructor <init>(Lu0/a$d;)V
    .locals 0

    iput-object p1, p0, Lu0/a$d$a;->a:Lu0/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    iget-object p1, p0, Lu0/a$d$a;->a:Lu0/a$d;

    iget-object p1, p1, Lu0/a$c;->a:Lu0/a$a;

    invoke-virtual {p1}, Lu0/a$a;->a()V

    return-void
.end method
