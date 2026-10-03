.class public final Ln2/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ln2/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln2/j;

    invoke-direct {v0}, Ln2/j;-><init>()V

    sput-object v0, Ln2/j$a;->a:Ln2/j;

    return-void
.end method
